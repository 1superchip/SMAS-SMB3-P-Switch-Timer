
; Source for Super Mario All Stars SMB3 P-Switch Timer Display
; Created by 1superchip
; All of thise code is injected into bank 0x29


ORG $29E716
UpdateInstruction:
JSL $29C1EC

ORG $29E71A
AddNop:
nop


ORG $29C1EC
PSwitch_Hijack:

LDX $0567 ;load p-switch timer
CPX #$00
BEQ end ;if 0 branch end

TXA ;transfer X to A

LDY #$0 ;set Y for the loop

modulusLoop:
CMP #$0A
BMI end
SEC
SBC #$0A
INY
JMP modulusLoop

;end of loop

end:
LDX $1600 ;default instruction
ORA #$90 ;default instruction (needed)
rtl

ORG $29FF84





