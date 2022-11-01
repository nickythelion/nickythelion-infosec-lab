from genericpath import exists
import os
from shutil import rmtree


def restore_files(
    folder: str, prefixes: list[str], exts: list[str], nof: int
) -> None:
    files = []

    for ext in exts:
        for i in range(nof):
            for p in prefixes:
                files.append(os.path.join(folder, f"{p}-FILE-{i}.{ext}"))

    if os.path.exists(folder):
        rmtree(folder)

    if not os.path.exists(folder):
        os.mkdir(folder)

    for f in files:
        with open(f, "x") as _:
            print(f"Restored {f}...")


def main():
    restore_files("./files_1", ["W", "PRIV"], ["sys", "doc", "cab"], 6)
    restore_files("./files_2", ["DEF"], ["doc", "sys", "png"], 7)


if __name__ == "__main__":
    main()
