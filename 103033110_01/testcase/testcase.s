j    35                   # PC = 136
sll  $0,  $0,  0          # PC = 140
j    39                   # PC = 144
halt                      # PC = 148
halt                      # PC = 152
jal  41                   # PC = 156
halt                      # PC = 160
                          # M[448] = 0xb0 = 176u = 176s
lw   $27, 448($0)         # PC = 164
jr   $27                  # PC = 168
sll  $0,  $0,  0          # PC = 172
sll  $0,  $0,  0          # PC = 176
sll  $0,  $0,  0          # PC = 180
sll  $0,  $0,  0          # PC = 184
sll  $0,  $0,  0          # PC = 188
sll  $0,  $0,  0          # PC = 192
                          # M[792] = 0x4dcf4628 = 1305429544u = 1305429544s
lw   $16, 792($0)         # PC = 196
                          # M[888] = 0x722ac05c = 1915404380u = 1915404380s
lw   $31, 888($0)         # PC = 200
add  $4,  $16, $31        # PC = 204
                          # M[684] = 0x88b4618d = 2293522829u = -2001444467s
lw   $12, 684($0)         # PC = 208
                          # M[312] = 0x97a378eb = 2544072939u = -1750894357s
lw   $26, 312($0)         # PC = 212
add  $4,  $12, $26        # PC = 216
                          # M[604] = 0x80000000 = 2147483648u = -2147483648s
lw   $21, 604($0)         # PC = 220
                          # M[864] = 0xfffffffd = 4294967293u = -3s
lw   $15, 864($0)         # PC = 224
add  $12, $21, $15        # PC = 228
add  $0,  $21, $15        # PC = 232
                          # M[900] = 0xefefefef = 4025479151u = -269488145s
lw   $24, 900($0)         # PC = 236
                          # M[76] = 0xabababab = 2880154539u = -1414812757s
lw   $16, 76($0)          # PC = 240
addu $1,  $24, $16        # PC = 244
addu $0,  $24, $16        # PC = 248
lw   $30, 604($0)         # PC = 252
sub  $15, $0,  $30        # PC = 256
                          # M[804] = 0x5892f353 = 1486025555u = 1486025555s
lw   $8,  804($0)         # PC = 260
                          # M[192] = 0xa43127d7 = 2754684887u = -1540282409s
lw   $30, 192($0)         # PC = 264
sub  $12, $8,  $30        # PC = 268
                          # M[1020] = 0x8c5206ca = 2354185930u = -1940781366s
lw   $6,  1020($0)        # PC = 272
                          # M[260] = 0x588cb452 = 1485616210u = 1485616210s
lw   $17, 260($0)         # PC = 276
sub  $12, $6,  $17        # PC = 280
sub  $0,  $6,  $17        # PC = 284
                          # M[156] = 0xfac9841c = 4207510556u = -87456740s
lw   $11, 156($0)         # PC = 288
                          # M[152] = 0xfbeb3806 = 4226496518u = -68470778s
lw   $31, 152($0)         # PC = 292
and  $1,  $11, $31        # PC = 296
or   $1,  $31, $11        # PC = 300
xor  $1,  $11, $31        # PC = 304
nor  $1,  $31, $11        # PC = 308
nand $1,  $11, $31        # PC = 312
and  $0,  $11, $31        # PC = 316
or   $0,  $31, $11        # PC = 320
xor  $0,  $11, $31        # PC = 324
nor  $0,  $31, $11        # PC = 328
nand $0,  $11, $31        # PC = 332
slt  $0,  $0,  $0         # PC = 336
                          # M[808] = 0xffffffff = 4294967295u = -1s
lw   $30, 808($0)         # PC = 340
slt  $0,  $0,  $30        # PC = 344
                          # M[748] = 0x1 = 1u = 1s
lw   $25, 748($0)         # PC = 348
slt  $0,  $0,  $25        # PC = 352
lw   $30, 808($0)         # PC = 356
slt  $0,  $30, $0         # PC = 360
lw   $8,  748($0)         # PC = 364
slt  $0,  $8,  $0         # PC = 368
                          # M[376] = 0x5 = 5u = 5s
lw   $3,  376($0)         # PC = 372
sll  $11, $3,  31         # PC = 376
sll  $0,  $3,  13         # PC = 380
                          # M[996] = 0xadef3923 = 2918136099u = -1376831197s
lw   $13, 996($0)         # PC = 384
srl  $11, $13, 19         # PC = 388
srl  $0,  $13, 9          # PC = 392
lw   $16, 996($0)         # PC = 396
sra  $11, $16, 18         # PC = 400
sra  $0,  $11, 9          # PC = 404
                          # M[636] = 0x7fffe891 = 2147477649u = 2147477649s
lw   $9,  636($0)         # PC = 408
addi $14, $9,  5999       # PC = 412
                          # M[352] = 0x7fffec79 = 2147478649u = 2147478649s
lw   $15, 352($0)         # PC = 416
addi $15, $15, 5999       # PC = 420
lw   $19, 604($0)         # PC = 424
addi $16, $19, -1         # PC = 428
                          # M[564] = 0x80000fa0 = 2147487648u = -2147479648s
lw   $24, 564($0)         # PC = 432
addi $17, $24, -4000      # PC = 436
lw   $9,  564($0)         # PC = 440
addi $18, $9,  -4010      # PC = 444
                          # M[760] = 0xe85dc383 = 3898459011u = -396508285s
lw   $30, 760($0)         # PC = 448
addi $29, $30, 7630       # PC = 452
addi $0,  $9,  -4010      # PC = 456
addi $0,  $19, -1         # PC = 460
                          # M[112] = 0x5ad44e11 = 1523863057u = 1523863057s
lw   $5,  112($0)         # PC = 464
addiu $9,  $5,  59907     # PC = 468
                          # M[1016] = 0xb6dafb14 = 3067804436u = -1227162860s
lw   $22, 1016($0)        # PC = 472
addiu $9,  $22, 55195     # PC = 476
                          # M[308] = 0x4917217 = 76640791u = 76640791s
lw   $15, 308($0)         # PC = 480
addiu $9,  $15, 22523     # PC = 484
lw   $15, 748($0)         # PC = 488
addiu $9,  $15, 58854     # PC = 492
addiu $9,  $0,  65535     # PC = 496
                          # M[244] = 0xab02d1af = 2869088687u = -1425878609s
lw   $14, 244($0)         # PC = 500
addiu $0,  $14, 25539     # PC = 504
                          # M[488] = 0x4ccd63a = 80533050u = 80533050s
lw   $29, 488($0)         # PC = 508
addiu $0,  $29, 9754      # PC = 512
                          # M[876] = 0x6f2cc6b3 = 1865205427u = 1865205427s
lw   $13, 876($0)         # PC = 516
addiu $0,  $13, 34232     # PC = 520
                          # M[52] = 0xfffffffa = 4294967290u = -6s
lw   $27, 52($0)          # PC = 524
lw   $13, 94($27)         # PC = 528
lw   $12, 748($0)         # PC = 532
lw   $13, 15($12)         # PC = 536
                          # M[256] = 0xfffffffc = 4294967292u = -4s
lw   $15, 256($0)         # PC = 540
lh   $19, 492($15)        # PC = 544
                          # M[880] = 0xfffffff1 = 4294967281u = -15s
lw   $27, 880($0)         # PC = 548
lhu  $27, 699($27)        # PC = 552
                          # M[620] = 0x89 = 137u = 137s
lw   $22, 620($0)         # PC = 556
lb   $19, 384($22)        # PC = 560
                          # M[944] = 0xffffffe9 = 4294967273u = -23s
lw   $26, 944($0)         # PC = 564
lbu  $21, 940($26)        # PC = 568
lw   $14, 52($0)          # PC = 572
lw   $0,  94($14)         # PC = 576
lw   $22, 748($0)         # PC = 580
lw   $0,  15($22)         # PC = 584
lw   $30, 256($0)         # PC = 588
lh   $0,  492($30)        # PC = 592
lw   $28, 880($0)         # PC = 596
lhu  $0,  699($28)        # PC = 600
lw   $21, 620($0)         # PC = 604
lb   $0,  384($21)        # PC = 608
lw   $18, 944($0)         # PC = 612
lbu  $0,  940($18)        # PC = 616
                          # M[340] = 0x3e8 = 1000u = 1000s
lw   $23, 340($0)         # PC = 620
lh   $13, 22($23)         # PC = 624
                          # M[860] = 0x3e9 = 1001u = 1001s
lw   $7,  860($0)         # PC = 628
lh   $13, 21($7)          # PC = 632
lw   $28, 340($0)         # PC = 636
lhu  $13, 22($28)         # PC = 640
lw   $24, 860($0)         # PC = 644
lhu  $13, 21($24)         # PC = 648
                          # M[464] = 0x100 = 256u = 256s
lw   $16, 464($0)         # PC = 652
lb   $13, 15($16)         # PC = 656
                          # M[540] = 0x248 = 584u = 584s
lw   $8,  540($0)         # PC = 660
lb   $13, 439($8)         # PC = 664
                          # M[36] = 0xbf = 191u = 191s
lw   $23, 36($0)          # PC = 668
lbu  $13, 832($23)        # PC = 672
                          # M[344] = 0xfe = 254u = 254s
lw   $20, 344($0)         # PC = 676
lbu  $13, 18($20)         # PC = 680
                          # M[380] = 0x14e5 = 5349u = 5349s
lw   $2,  380($0)         # PC = 684
lw   $13, -4329($2)       # PC = 688
                          # M[416] = 0x8064 = 32868u = 32868s
lw   $26, 416($0)         # PC = 692
lw   $13, -31848($26)     # PC = 696
                          # M[968] = 0x252a = 9514u = 9514s
lw   $14, 968($0)         # PC = 700
lh   $13, -8492($14)      # PC = 704
                          # M[196] = 0x7727 = 30503u = 30503s
lw   $6,  196($0)         # PC = 708
lhu  $13, -29481($6)      # PC = 712
                          # M[648] = 0x1352 = 4946u = 4946s
lw   $16, 648($0)         # PC = 716
lb   $13, -3923($16)      # PC = 720
                          # M[952] = 0x28ec = 10476u = 10476s
lw   $19, 952($0)         # PC = 724
lbu  $13, -9453($19)      # PC = 728
                          # M[392] = 0xffffd9aa = 4294957482u = -9814s
lw   $12, 392($0)         # PC = 732
lw   $13, 10834($12)      # PC = 736
                          # M[228] = 0xffff9167 = 4294938983u = -28313s
lw   $16, 228($0)         # PC = 740
lh   $13, 29335($16)      # PC = 744
                          # M[776] = 0xffffc9bc = 4294953404u = -13892s
lw   $8,  776($0)         # PC = 748
lhu  $13, 14914($8)       # PC = 752
                          # M[44] = 0xffffe8fb = 4294961403u = -5893s
lw   $12, 44($0)          # PC = 756
lb   $13, 6916($12)       # PC = 760
                          # M[728] = 0xffffcc49 = 4294954057u = -13239s
lw   $19, 728($0)         # PC = 764
lbu  $13, 14262($19)      # PC = 768
lui  $13, 15              # PC = 772
lui  $13, 13458           # PC = 776
lui  $0,  916             # PC = 780
                          # M[828] = 0x1d0b2645 = 487269957u = 487269957s
lw   $7,  828($0)         # PC = 784
andi $11, $7,  10137      # PC = 788
ori  $11, $7,  8813       # PC = 792
nori $11, $7,  48747      # PC = 796
slti $11, $7,  -5858      # PC = 800
                          # M[336] = 0x44b563fc = 1152738300u = 1152738300s
lw   $6,  336($0)         # PC = 804
andi $11, $6,  23841      # PC = 808
ori  $11, $6,  1573       # PC = 812
nori $11, $6,  63153      # PC = 816
slti $11, $6,  2602       # PC = 820
                          # M[472] = 0x5ca737db = 1554462683u = 1554462683s
lw   $1,  472($0)         # PC = 824
andi $11, $1,  5448       # PC = 828
ori  $11, $1,  23948      # PC = 832
nori $11, $1,  43736      # PC = 836
slti $11, $1,  4418       # PC = 840
                          # M[288] = 0x1f41a2ab = 524395179u = 524395179s
lw   $25, 288($0)         # PC = 844
andi $0,  $25, 38165      # PC = 848
ori  $0,  $25, 34096      # PC = 852
nori $0,  $25, 8378       # PC = 856
slti $0,  $25, 19486      # PC = 860
                          # M[676] = 0x80b = 2059u = 2059s
lw   $14, 676($0)         # PC = 864
                          # M[824] = 0xab939293 = 2878575251u = -1416392045s
lw   $6,  824($0)         # PC = 868
beq  $14, $6,  -3         # PC = 872
                          # M[148] = 0x132108db = 320932059u = 320932059s
lw   $23, 148($0)         # PC = 876
                          # M[976] = 0x3f239293 = 1059295891u = 1059295891s
lw   $28, 976($0)         # PC = 880
beq  $23, $28, 2933       # PC = 884
                          # M[796] = 0x2f58c = 193932u = 193932s
lw   $10, 796($0)         # PC = 888
bne  $10, $10, -19033     # PC = 892
                          # M[664] = 0xf9049f92 = 4177829778u = -117137518s
lw   $4,  664($0)         # PC = 896
bne  $4,  $4,  14833      # PC = 900
                          # M[680] = 0x0 = 0u = 0s
lw   $1,  680($0)         # PC = 904
bgtz $1,  -4839           # PC = 908
bgtz $0,  -493            # PC = 912
                          # M[324] = 0xffffef9f = 4294963103u = -4193s
lw   $12, 324($0)         # PC = 916
bgtz $12, 29481           # PC = 920
lw   $22, 680($0)         # PC = 924
bgtz $22, 492             # PC = 928
                          # M[752] = 0x17 = 23u = 23s
lw   $11, 752($0)         # PC = 932
lw   $27, 752($0)         # PC = 936
beq  $11, $27, 1          # PC = 940
j    8873283              # PC = 944
                          # M[72] = 0xffff = 65535u = 65535s
lw   $9,  72($0)          # PC = 948
                          # M[404] = 0xff0f = 65295u = 65295s
lw   $21, 404($0)         # PC = 952
bne  $9,  $21, 1          # PC = 956
j    1193046              # PC = 960
lw   $5,  748($0)         # PC = 964
bgtz $5,  1               # PC = 968
halt                      # PC = 972
                          # M[272] = 0x14 = 20u = 20s
lw   $29, 272($0)         # PC = 976
                          # M[484] = 0xfffffff0 = 4294967280u = -16s
lw   $24, 484($0)         # PC = 980
sw   $29, 16($24)         # PC = 984
sh   $29, 18($24)         # PC = 988
sb   $29, 19($24)         # PC = 992
lw   $19, 0($0)           # PC = 996
lw   $19, 4($0)           # PC = 1000
                          # M[128] = 0x7fffffff = 2147483647u = 2147483647s
lw   $13, 128($0)         # PC = 1004
lw   $0,  7($13)          # PC = 1008
# Written iimage.bin, 219 words(excluding PC and size) total.
# Written dimage.bin, 256 words(excluding SP and size) total.
