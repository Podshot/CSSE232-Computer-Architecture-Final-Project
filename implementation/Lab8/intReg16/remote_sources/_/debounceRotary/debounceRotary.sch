VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL CLK
        SIGNAL RESET
        SIGNAL XLXN_8
        SIGNAL A
        SIGNAL XLXN_17
        SIGNAL rot_event
        SIGNAL XLXN_23
        SIGNAL XLXN_24
        SIGNAL XLXN_25
        SIGNAL XLXN_26
        SIGNAL XLXN_29
        SIGNAL XLXN_43
        SIGNAL rot_left
        SIGNAL XLXN_47
        SIGNAL B
        SIGNAL XLXN_48
        SIGNAL rot_event_delay
        PORT Input CLK
        PORT Input RESET
        PORT Input A
        PORT Output rot_event
        PORT Output rot_left
        PORT Input B
        PORT Output rot_event_delay
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF fdc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            RECTANGLE N 64 -320 320 -64 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF fdce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
        END BLOCKDEF
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCK XLXI_9 and2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_13 or2
            PIN I0 XLXN_1
            PIN I1 XLXN_17
            PIN O XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_14 or2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_10 and2
            PIN I0 XLXN_3
            PIN I1 XLXN_2
            PIN O XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_21 fdc
            PIN C CLK
            PIN CLR RESET
            PIN D XLXN_4
            PIN Q XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_26 and2b1
            PIN I0 XLXN_8
            PIN I1 XLXN_17
            PIN O XLXN_47
        END BLOCK
        BEGIN BLOCK XLXI_22 fdc
            PIN C CLK
            PIN CLR RESET
            PIN D XLXN_17
            PIN Q XLXN_8
        END BLOCK
        BEGIN BLOCK XLXI_23 fdc
            PIN C CLK
            PIN CLR RESET
            PIN D XLXN_47
            PIN Q rot_event
        END BLOCK
        BEGIN BLOCK XLXI_45 and2
            PIN I0 B
            PIN I1 XLXN_29
            PIN O XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_46 or2
            PIN I0 XLXN_23
            PIN I1 XLXN_43
            PIN O XLXN_24
        END BLOCK
        BEGIN BLOCK XLXI_47 or2
            PIN I0 B
            PIN I1 XLXN_29
            PIN O XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_48 and2
            PIN I0 XLXN_25
            PIN I1 XLXN_24
            PIN O XLXN_26
        END BLOCK
        BEGIN BLOCK XLXI_49 fdc
            PIN C CLK
            PIN CLR RESET
            PIN D XLXN_26
            PIN Q XLXN_43
        END BLOCK
        BEGIN BLOCK XLXI_25 fdce
            PIN C CLK
            PIN CE XLXN_47
            PIN CLR RESET
            PIN D XLXN_43
            PIN Q rot_left
        END BLOCK
        BEGIN BLOCK XLXI_69 inv
            PIN I A
            PIN O XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_70 fdc
            PIN C CLK
            PIN CLR RESET
            PIN D rot_event
            PIN Q rot_event_delay
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_9 400 368 R0
        INSTANCE XLXI_13 720 336 R0
        INSTANCE XLXI_14 400 528 R0
        INSTANCE XLXI_10 1040 368 R0
        BEGIN BRANCH XLXN_1
            WIRE 656 272 720 272
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 976 240 1040 240
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 656 432 848 432
            WIRE 848 304 848 432
            WIRE 848 304 1040 304
        END BRANCH
        INSTANCE XLXI_21 1360 528 R0
        INSTANCE XLXI_26 2320 400 R0
        INSTANCE XLXI_22 1840 672 R0
        INSTANCE XLXI_23 2640 560 R0
        BEGIN BRANCH XLXN_4
            WIRE 1296 272 1360 272
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 1280 400 1360 400
        END BRANCH
        BEGIN BRANCH RESET
            WIRE 1280 496 1360 496
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 2224 416 2272 416
            WIRE 2272 336 2272 416
            WIRE 2272 336 2320 336
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 1760 544 1840 544
            BEGIN DISPLAY 1760 544 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RESET
            WIRE 1760 640 1840 640
            BEGIN DISPLAY 1760 640 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A
            WIRE 240 240 320 240
            WIRE 320 240 320 400
            WIRE 320 400 320 560
            WIRE 320 400 400 400
            WIRE 320 240 400 240
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 640 128 640 208
            WIRE 640 208 720 208
            WIRE 640 128 1760 128
            WIRE 1760 128 1760 272
            WIRE 1760 272 2320 272
            WIRE 1760 272 1760 416
            WIRE 1760 416 1840 416
            WIRE 1744 272 1760 272
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 2560 432 2640 432
            BEGIN DISPLAY 2560 432 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RESET
            WIRE 2560 528 2640 528
            BEGIN DISPLAY 2560 528 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rot_event
            WIRE 2400 608 2400 1424
            WIRE 2400 1424 2640 1424
            WIRE 2400 608 3056 608
            WIRE 3024 304 3056 304
            WIRE 3056 304 3120 304
            WIRE 3056 304 3056 608
        END BRANCH
        INSTANCE XLXI_45 400 1008 R0
        INSTANCE XLXI_46 720 976 R0
        INSTANCE XLXI_47 400 1168 R0
        INSTANCE XLXI_48 1040 1008 R0
        BEGIN BRANCH XLXN_23
            WIRE 656 912 720 912
        END BRANCH
        BEGIN BRANCH XLXN_24
            WIRE 976 880 1040 880
        END BRANCH
        BEGIN BRANCH XLXN_25
            WIRE 656 1072 848 1072
            WIRE 848 944 848 1072
            WIRE 848 944 1040 944
        END BRANCH
        INSTANCE XLXI_49 1360 1168 R0
        BEGIN BRANCH XLXN_26
            WIRE 1296 912 1360 912
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 1280 1040 1360 1040
            BEGIN DISPLAY 1280 1040 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RESET
            WIRE 1280 1136 1360 1136
            BEGIN DISPLAY 1280 1136 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_29
            WIRE 320 784 320 880
            WIRE 320 880 400 880
            WIRE 320 880 320 1040
            WIRE 320 1040 400 1040
        END BRANCH
        INSTANCE XLXI_25 2640 1168 R0
        BEGIN BRANCH XLXN_43
            WIRE 640 768 1760 768
            WIRE 1760 768 1760 912
            WIRE 1760 912 2640 912
            WIRE 640 768 640 848
            WIRE 640 848 720 848
            WIRE 1744 912 1760 912
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 2560 1040 2640 1040
            BEGIN DISPLAY 2560 1040 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RESET
            WIRE 2560 1136 2640 1136
            BEGIN DISPLAY 2560 1136 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rot_left
            WIRE 3024 912 3120 912
        END BRANCH
        BEGIN BRANCH XLXN_47
            WIRE 2576 304 2608 304
            WIRE 2608 304 2608 976
            WIRE 2608 976 2640 976
            WIRE 2608 304 2640 304
        END BRANCH
        INSTANCE XLXI_69 288 560 R90
        BEGIN BRANCH B
            WIRE 240 304 384 304
            WIRE 384 304 400 304
            WIRE 384 304 384 464
            WIRE 384 464 400 464
            WIRE 384 464 384 944
            WIRE 384 944 400 944
            WIRE 384 944 384 1104
            WIRE 384 1104 400 1104
        END BRANCH
        IOMARKER 3120 304 rot_event R0 28
        IOMARKER 3120 912 rot_left R0 28
        IOMARKER 1280 400 CLK R180 28
        IOMARKER 1280 496 RESET R180 28
        IOMARKER 240 240 A R180 28
        IOMARKER 240 304 B R180 28
        INSTANCE XLXI_70 2640 1680 R0
        BEGIN BRANCH CLK
            WIRE 2560 1552 2640 1552
            BEGIN DISPLAY 2560 1552 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RESET
            WIRE 2560 1648 2640 1648
            BEGIN DISPLAY 2560 1648 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rot_event_delay
            WIRE 3024 1424 3120 1424
        END BRANCH
        IOMARKER 3120 1424 rot_event_delay R0 28
    END SHEET
END SCHEMATIC
