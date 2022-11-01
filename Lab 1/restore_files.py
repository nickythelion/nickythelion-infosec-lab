import os
from shutil import rmtree


def restore_doc_files(folder: str) -> None:
    DOC_DEFAULT_NAMES = [
        "WEATHER.doc",
        "STARTUP-IDEA.doc",
        "WAGES.doc",
        "TEAMBULDING.doc",
        "WATTAGE-PLAN.doc",
    ]

    file_paths = [os.path.join(folder, d) for d in DOC_DEFAULT_NAMES]

    for f in file_paths:
        with open(f, "x") as _:
            print(f"Restored {f}...")


def write_sys_files(folder: str) -> None:
    SYS_DEF_FILES = [
        "WEATHER.sys",
        "STARTUP-IDEA.sys",
        "WAGES.sys",
        "TEAMBULDING.sys",
        "WATTAGE-PLAN.sys",
    ]

    file_paths = [os.path.join(folder, d) for d in SYS_DEF_FILES]

    for f in file_paths:
        with open(f, "x") as _:
            print(f"Restored {f}...")


def main():
    if os.path.exists("./files"):
        rmtree("./files")
    
    if not os.path.exists("./files"):
        os.mkdir("./files")
    
    restore_doc_files("./files")
    write_sys_files("./files")

if __name__ == "__main__":
    main()
