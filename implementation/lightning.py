import os
from typing import Dict, List, Tuple
import time
from argparse import ArgumentParser
import re
import json

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
    "jfnc": 0b01011,
    "cequ": 0b01100,
    "cles": 0b01101,
    "cgre": 0b01110,
    "lorr": 0b01111,
    "land": 0b10000,
    "shfl": 0b10001,
    "shfr": 0b10010,
    "load": 0b10011,
    "stor": 0b10100,
    "bkac": 0b10101,
    "bkra": 0b10110,
    "swap": 0b10111,
    "noop": 0b11111
}

IGNORE_FLAG_BIT = (
    "sput",
    "rpop",
    "jret",
    "bkra",
    "swap"
)

JUMP_COMMANDS = (
    "jimm",
    "jacc",
    "jcmp",
    "jfnc"
)

def strip_comments(raw_data: List[str]) -> List[str]:
    no_comments = []
    for line in raw_data:

        if '#' not in line:
            no_comments.append(line.lstrip())
            continue

        line = line.lstrip()
        no_comments.append(line[:line.index('#')] + '\n')

    stripped_data = []
    for line in no_comments:
        line = line.strip()

        if line == "":
            continue

        stripped_data.append(line)

    return stripped_data

def identify_labels(code: List[str]) -> Dict[str, int]:
    label_matcher = re.compile(r"^[a-zA-Z_]+:")

    label_map = {}

    for i in range(len(code)):
        line = code[i]

        if label_matcher.match(line):
            label = label_matcher.match(line).string.strip()[:-1]
            label_map[label] = i

    return label_map

def parse_line(line: str, label_map: Dict[str, int], current_line: int) -> Tuple[str, str]:
    full_binary = ""
    full_inst = ""

    parts = line.split()

    flag_bit = '@' in parts[0]
    if flag_bit:
        parts[0] = parts[0][:-1]

    if parts[0] in IGNORE_FLAG_BIT:
        flag_bit = False

    full_binary += "1" if flag_bit else "0"

    inst_code = OP_CODES[parts[0]]
    full_binary += f"{inst_code:05b}"

    full_inst += f"{parts[0]}"
    full_inst += "@" if flag_bit else ""
    full_inst += " " * (5 - len(full_inst))

    if len(parts) == 2:
        if parts[0] in JUMP_COMMANDS:
            addr = label_map[parts[1]]
            if flag_bit:
                print(f"Addr: {current_line - addr}")
                offset = addr - current_line
                full_binary += f"{offset:08b}"
                full_inst += f" {offset}"
            else:
                addr_bin = f"{addr:08b}"
                full_binary += addr_bin
                full_inst += f" {addr}"
        else:
            imm = int(parts[1])
            full_binary += f"{imm:08b}"
            full_inst += f" {imm}"
    else:
        imm = 0
        full_binary += f"{imm:08b}"
        full_inst += f" {imm}"

    return full_binary, full_inst

def parse_instructions(code: List[str], labels_and_addresses: Dict[str, int]) -> Tuple[List[str], List[str]]:
    binary_instructions = []
    asm_instructions = []

    for i in range(len(code)):
        line = code[i]

        if line.endswith(':'):
            line = "noop"

        bin_inst, asm_inst = parse_line(line, labels_and_addresses, i)
        binary_instructions.append(bin_inst)
        asm_instructions.append(asm_inst)

    return binary_instructions, asm_instructions

def parse_file(f: str, export_debug_mapping=False):
    name = os.path.basename(f)
    name = name[:name.index('.')]

    fp = open(f)
    data = fp.readlines()
    fp.close()

    asm_code = strip_comments(data)

    labels_and_addresses = identify_labels(asm_code)

    machine_code, parsed_asm_code = parse_instructions(asm_code, labels_and_addresses)


    fp = open(f"{name}.out", 'w')
    fp.writelines((f"{l}\n" for l in machine_code))
    fp.close()

    if export_debug_mapping:
        fp = open(f"{name}.debug_mapping", "w")
        fp.write("==== Label and Address Mapping ====\n")
        fp.write(json.dumps(labels_and_addresses, indent=4))
        fp.write('\n' * 2)
        max_int_len = len(str(len(asm_code)))

        fp.write("==== Raw Code ====\n")
        for i in range(len(asm_code)):
            fp.write(f"{i:0{max_int_len}d}:  {asm_code[i]:<25} {parsed_asm_code[i]}\n")
        fp.write("\n" * 2)

        fp.write("==== Machine Code ====\n")
        for i in range(len(machine_code)):
            fp.write(f"{i:0{max_int_len}d}:  {machine_code[i]:<25} {parsed_asm_code[i]}\n")

        fp.close()

if __name__ == "__main__":
    parser = ArgumentParser()
    parser.add_argument(
        "-f",
        "--file",
        nargs='+',
        required=True
    )
    parser.add_argument(
        "-d"
        "--export-debug-mapping",
        action="store_true"
    )
    args = parser.parse_args()


    print(f"Parsing {len(args.file)} files...")
    compile_times = {}


    for f in args.file:
        start = time.time()

        parse_file(f, args.d__export_debug_mapping)

        end = time.time()
        compile_times[f] = end - start
        print(f"Finished {f}")

    print("===== Finished compiling all files =====")
    for f, t in compile_times.items():
        print(f"Compiling {f} took: {t:.03f}s")