LDmicro0.2
MICRO=Microchip PIC16F877 40-PDIP
CYCLE=10000 us at Timer1, YPlcCycleDuty:0, ConfigurationWord(s):0x73FB8FF800003F72
CRYSTAL=4000000 Hz
BAUD=9600 Hz, RATE=1000000 Hz, SPEED=100000 Hz
COMPILED=C:\Users\briss\Desktop\ParpadeoSemaforo\ParpadeoSemaforo1.hex
COMPILER=IHEX

PULL-UP LIST
    RA: 0xFFFFFFFF 
    RB: 0xFFFFFFFF 
    RC: 0xFFFFFFFF 
    RD: 0xFFFFFFFF 
    RE: 0xFFFFFFFF 
END

VAR LIST
    2 bytes T1 	Now no se usa!
    2 bytes T10 	Now no se usa!
    2 bytes T2 	Now no se usa!
    2 bytes T3 	Now no se usa!
    2 bytes T4 	Now no se usa!
    2 bytes T5 	Now no se usa!
    2 bytes T6 	Now no se usa!
    2 bytes T7 	Now no se usa!
    2 bytes T8 	Now no se usa!
    2 bytes T9 	Now no se usa!
    2 bytes TA 	Now no se usa!
    2 bytes TB 	Now no se usa!
    2 bytes TC 	Now no se usa!
    2 bytes TD 	Now no se usa!
    2 bytes TE 	Now no se usa!
    2 bytes TF 	Now no se usa!
    2 bytes TG 	Now no se usa!
    2 bytes TH 	Now no se usa!
    2 bytes TI 	Now no se usa!
    1 bytes TIMER 	Now no se usa!
    2 bytes TJ 	Now no se usa!
    2 bytes TRETARDO1
    2 bytes TRETARDO2
    2 bytes TRETARDO3
    2 bytes TT3 	Now no se usa!
    2 bytes TTIM1 	Now no se usa!
    2 bytes TTIM10 	Now no se usa!
    2 bytes TTIM2 	Now no se usa!
    2 bytes TTIM3 	Now no se usa!
    2 bytes TTIM4 	Now no se usa!
    2 bytes TTIM5 	Now no se usa!
    2 bytes TTIM6 	Now no se usa!
    2 bytes TTIM7 	Now no se usa!
    2 bytes TTIM8 	Now no se usa!
    2 bytes TTIM9 	Now no se usa!
    2 bytes TTIMER 	Now no se usa!
    2 bytes Tnew 	Now no se usa!
END

IO LIST
    XOFF at 8 0 0
    XON at 9 0 0
    YLAMARILLO at 34 0 0
    YLROJO at 35 0 0
    YLVERDE at 33 0 0
END

PROGRAM
RUNG 1
  CONTACTS XOFF 1 0
  PARALLEL
    CONTACTS XON 0 0
    CONTACTS RACT 0 0
  END
  COIL RACT 0 0 0 0
END
RUNG 2
  CONTACTS RACT 0 0
  CONTACTS YLAMARILLO 1 0
  CONTACTS YLROJO 1 0
  COIL YLVERDE 0 0 0 0
END
RUNG 3
  PARALLEL
    CONTACTS YLVERDE 0 0
    CONTACTS YLAMARILLO 0 0
  END
  TON TRETARDO1 2000000 0
  CONTACTS YLROJO 1 0
  COIL YLAMARILLO 0 0 0 0
END
RUNG 4
  PARALLEL
    CONTACTS YLAMARILLO 0 0
    CONTACTS YLROJO 0 0
  END
  TON TRETARDO2 2000000 0
  CONTACTS RREINICIO 1 0
  COIL YLROJO 0 0 0 0
END
RUNG 5
  CONTACTS YLROJO 0 0
  TON TRETARDO3 2000000 0
  COIL RREINICIO 0 0 0 0
END
