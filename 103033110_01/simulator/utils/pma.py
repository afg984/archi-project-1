#!/usr/bin/env python3
'''
pma - Pusedo MIPS Assembler
'''

import os
import sys
import random
import struct
from functools import singledispatch


sys.path.append(os.path.dirname(os.path.abspath(__file__)))


def write_be32(file, *values):
    file.write(struct.pack('>' + 'I' * len(values), *values))


initial_pc = 0
initial_sp = 0


def set_pc(value):
    global initial_pc
    initial_pc = value


def set_sp(value):
    global initial_sp
    initial_sp = value


class DImage:

    class Full(Exception):
        pass

    def __init__(self):
        self.raw = [random.randrange(1 << 32) for i in range(256)]
        self.empty = list(range(256))
        random.shuffle(self.empty)
        self.reserved = {}

    def address_of(self, value):
        try:
            return self.reserved[value]
        except KeyError:
            try:
                offset = self.empty.pop()
            except IndexError:
                raise Full
            self.reserved[value] = offset * 4
            self.raw[offset] = value
            print('                          # M[{}] = 0x{:x} = {}u = {}s'.format(offset * 4, value, value, u2s(value)))
            return offset * 4

    def value_at(self, address):
        assert not address % 4
        return self.raw[address // 4]

    def write(self):
        with open('dimage.bin', mode='wb') as file:
            write_be32(file, initial_sp)
            write_be32(file, 256)
            write_be32(file, *self.raw)
        print('# Written dimage.bin, 256 words(excluding SP and size) total.')


dimage = DImage()


class Register:
    registers = list(range(1, 32))
    r_values = [0] * 32

    def __init__(self, ri):
        self.ri = ri

    def __call__(self, value):
        rc = random.randrange(31 - 5)
        if rc:
            self.registers[self.ri], self.registers[5 + rc] = self.registers[5 + rc], self.registers[self.ri]
        self.address = dimage.address_of(value)
        lw(self.s, self.address, 0)
        return self

    @property
    def value(self):
        return dimage.value_at(self.address)

    @property
    def s(self):
        return self.registers[self.ri]

    @property
    def address(self):
        return self.r_values[self.s]

    @address.setter
    def address(self, v):
        self.r_values[self.s] = v

    def __repr__(self):
        return '<register ${0:}, value={1:}, M[${0:}]={2:}>'.format(self.s, self.address, self.value)


def repack(fr, to, value):
    return struct.unpack(to, struct.pack(fr, value))[0]


def s2u(value):
    return repack('>i', '>I', value)


def u2s(value):
    return repack('>I', '>i', value)


class SignedRegister(Register):

    def __call__(self, value):
        return super().__call__(s2u(value))

    @property
    def value(self):
        return u2s(super().value)


@singledispatch
def as_register_bits(obj):
    raise NotImplementedError


@as_register_bits.register(int)
def _arb_int(obj):
    assert obj < 1 << 5, obj
    return obj


@as_register_bits.register(Register)
def _arb_reg(obj):
    return _arb_int(obj.s)


u0 = Register(0)
u1 = Register(1)
u2 = Register(2)
s0 = SignedRegister(3)
s1 = SignedRegister(4)
s2 = SignedRegister(5)


instructions = []


def emit(unsigned):
    import imageinspect
    print('{:<24}  # PC = {}'.format(
        imageinspect.registry.explain(imageinspect.Code(unsigned)),
        len(instructions) * 4 + initial_pc
    ))
    instructions.append(unsigned)


def write_iimage():
    assert initial_pc % 4 == 0
    assert len(instructions) * 4 + initial_pc <= 1024
    with open('iimage.bin', mode='wb') as file:
        write_be32(file, initial_pc)
        write_be32(file, len(instructions))
        write_be32(file, *instructions)
    print(
        '# Written iimage.bin,',
        len(instructions),
        'words(excluding PC and size) total.')


def h2H(value):
    return repack('>h', '>H', value)


from imageinspect import Bits


class DST:

    def __init__(self, funct):
        self.funct = funct

    def __call__(self, d, s, t):
        bits = Bits()
        bits[5:0] = self.funct
        bits[10:6] = random.randrange(1 << 5)
        bits[15:11] = as_register_bits(d)
        bits[20:16] = as_register_bits(t)
        bits[25:21] = as_register_bits(s)
        bits[31:26] = 0
        emit(bits.u)


class DTC:

    def __init__(self, funct):
        self.funct = funct

    def __call__(self, d, t, C):
        bits = Bits()
        bits[5:0] = self.funct
        bits[10:6] = C
        bits[15:11] = as_register_bits(d)
        bits[20:16] = as_register_bits(t)
        bits[25:21] = random.randrange(1 << 5)
        bits[31:26] = 0
        emit(bits.u)


class S:

    def __init__(self):
        pass

    def __call__(self, s):
        bits = Bits()
        bits[5:0] = 0x08
        bits[20:6] = random.randrange(1 << 15)
        bits[25:21] = as_register_bits(s)
        bits[31:26] = 0
        emit(bits.u)


class TSC:

    def __init__(self, opcode, signed_c):
        self.opcode = opcode
        self.signed_c = signed_c

    def __call__(self, t, s, C):
        if self.signed_c:
            C = h2H(C)
        bits = Bits()
        bits[31:26] = self.opcode
        bits[25:21] = as_register_bits(s)
        bits[20:16] = as_register_bits(t)
        bits[15:0] = C
        emit(bits.u)


class TCS:

    def __init__(self, opcode):
        self.opcode = opcode

    def __call__(self, t, C, s):
        bits = Bits()
        bits[31:26] = self.opcode
        bits[25:21] = as_register_bits(s)
        bits[20:16] = as_register_bits(t)
        bits[15:0] = h2H(C)
        emit(bits.u)


class TC(TSC):

    def __init__(self, opcode):
        super().__init__(opcode, signed_c=False)

    def __call__(self, t, C):
        super().__call__(t, random.randrange(1 << 5), C)


class STC(TSC):

    def __init__(self, opcode):
        super().__init__(opcode, signed_c=True)

    def __call__(self, s, t, C):
        super().__call__(t, s, C)


class SC(TSC):

    def __init__(self, opcode):
        super().__init__(opcode, signed_c=True)

    def __call__(self, s, C):
        super().__call__(random.randrange(1 << 5), s, C)


class C:

    def __init__(self, opcode):
        self.opcode = opcode

    def __call__(self, C):
        bits = Bits()
        bits[31:26] = self.opcode
        bits[25:0] = C
        emit(bits.u)


class HALT:

    def __call__(self):
        bits = Bits()
        bits[31:26] = 0x3f
        bits[25:0] = random.randrange(1 << 26)
        emit(bits.u)


add = DST(0x20)
addu = DST(0x21)
sub = DST(0x22)
and_ = DST(0x24)
or_ = DST(0x25)
xor = DST(0x26)
nor = DST(0x27)
nand = DST(0x28)
slt = DST(0x2a)
sll = DTC(0x00)
srl = DTC(0x02)
sra = DTC(0x03)
jr = S()


addi = TSC(0x08, signed_c=True)
addiu = TSC(0x09, signed_c=False)
lw = TCS(0x23)
lh = TCS(0x21)
lhu = TCS(0x25)
lb = TCS(0x20)
lbu = TCS(0x24)
sw = TCS(0x2b)
sh = TCS(0x29)
sb = TCS(0x28)
lui = TC(0x0f)
andi = TSC(0x0c, signed_c=False)
ori = TSC(0x0d, signed_c=False)
nori = TSC(0x0e, signed_c=False)
slti = TSC(0x0a, signed_c=True)
beq = STC(0x04)
bne = STC(0x05)
bgtz = SC(0x07)
j = C(0x02)
jal = C(0x03)
halt = HALT()


def finish():
    write_iimage()
    dimage.write()


if __name__ == '__main__':
    import sys
    import runpy
    if len(sys.argv) != 2:
        raise SystemExit('Usage: {} FILENAME'.format(sys.argv[0]))
    runpy.run_path(sys.argv[1], globals())
