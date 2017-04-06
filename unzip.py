# -*- coding: utf-8 -*-
from os import chdir
from os import getcwd
from os import listdir
import zipfile

DIR2 = r'E:\PatStat\Legal_Status\Data\\'
DIR = r'E:\PatStat\Register\Data\\'

def main():
    chdir(DIR)
    print(getcwd())
    for file in listdir():
        if zipfile.is_zipfile(file):
            print(file)
            with zipfile.ZipFile(file) as unzip:
                unzip.extractall(path = DIR)
    return

if __name__ == '__main__':
    main()
    print("All zip files unzipped")

    


