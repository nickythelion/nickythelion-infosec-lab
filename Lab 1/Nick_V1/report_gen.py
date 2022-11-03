from io import TextIOWrapper
import os
from pydoc import TextRepr


def write_header(file: TextIOWrapper):
    header = """
    Лабораторная работа

    Выполнял: Белогузов Николай Владимирович
    Факультет: Инноватика
    Группа: U3177

    Задания выполнены в данном порядке:
        Задание 1 (Описать команды)
        Задание 2 (Вариант 1):
            #1
            #7
            #11
            #13
            #18

    """
    file.write(header)


def write_batch_file(file: TextIOWrapper, index: int):
    with open(f"./CMD{index}.bat", "r") as bat:
        file.write(f"\n====\n{bat.read()}\n====")


def write_text_file(file: TextIOWrapper, t: str):
    with open(t, "r") as v:
        file.write(v.read())


def main():
    if os.path.exists("БНВ.txt"):
        os.remove("БНВ.txt")

    with open("БНВ.txt", "x") as report:
        write_header(report)
        write_text_file(report, "task_1.txt")
        for i in range(2, 7):
            write_batch_file(report, i)
