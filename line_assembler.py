from typing import List

OP_CODES = {
    "aput": 0b00000,
    "sput": 0b00001,
    "aadd": 0b00010,
    "asub": 0b00011,
    "spek": 0b00100,
    "spop": 0b00101,
    "rpop": 0b00110,
    "jimm": 0b00111,
    "jacc": 0b01000,
    "jcmp": 0b01001,
    "jret": 0b01010,
    "cequ": 0b01011,
    "cles": 0b01100,
    "cgre": 0b01101,
    "lorr": 0b01110,
    "land": 0b01111,
    "shfl": 0b10000,
    "shfr": 0b10001,
    "load": 0b10010,
    "stor": 0b10011,
    "bkac": 0b10100,
    "bkra": 0b10101,
}

FLAGS = {
    "0x0": 0,
    "0": 0,
    "0x1": 1,
    "1": 1
}


def inst_to_machine(parts: List[str]) -> str:
    inst = OP_CODES[parts[0]]
    flag = FLAGS[parts[1]]

    if flag and len(parts) == 3:
        immediate = int(parts[2])
    else:
        immediate = 0

    return f"{flag:b}{inst:05b}{immediate:08b}"


def main():
    print("Type \"_stop\" to exit")
    while True:
        inp = input("Command to assemble: ").lower()

        if inp == "_stop":
            break

        parts = inp.split(" ")

        machine_code = inst_to_machine(parts)

        print(machine_code)


if __name__ == "__main__":
    main()
