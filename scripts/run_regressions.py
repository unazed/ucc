import argparse
import subprocess
import os
import glob
import sys


class Args:
    ucc_path: str
    regr_path: str


FAILED = "failed regression"
PASSED = "passed"


def main(args: Args) -> bool:
    compiler_path, regr_path = args.ucc_path, args.regr_path
    if not os.path.isfile(compiler_path):
        sys.exit(f"fatal: file doesn't exist {compiler_path!r}")
    if not os.path.isdir(regr_path):
        sys.exit(f"fatal: folder doesn't exist {regr_path!r}")
    passing, failing = (glob.glob(f"{regr_path}/*.pass.c"),
                        glob.glob(f"{regr_path}/*.fail.c"))
    failed, passed = 0, 0
    lpad = max(map(len, passing + failing))
    print("-" * (lpad + max(len(PASSED), len(FAILED))))
    for file in passing:
        try:
            subprocess.check_output([f"./{compiler_path}", file])
            print(f"{file.rjust(lpad)}: \033[42m{PASSED}\033[0m")
            passed += 1
        except subprocess.CalledProcessError:
            print(f"{file.rjust(lpad)}: \033[41m{FAILED}\033[0m")
            failed += 1
    for file in failing:
        try:
            subprocess.check_output([f"./{compiler_path}", file])
            print(f"{file.rjust(lpad)}: \033[41m{FAILED}\033[0m")
            failed += 1
        except subprocess.CalledProcessError:
            print(f"{file.rjust(lpad)}: \033[42m{PASSED}\033[0m")
            passed += 1
    print("-" * (lpad + max(len(PASSED), len(FAILED))))
    print(f"\033[1mpassed {passed} regressions, failed {failed}\033[0m")
    return failed > 0


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        prog='ucc-regressions',
        description='Test all current regressions against UCC',
        epilog='Unazed Spectaculum, 2024'
    )
    parser.add_argument("ucc_path")
    parser.add_argument("regr_path")
    args = parser.parse_args()
    sys.exit(main(args))
