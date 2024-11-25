##################################################################################
# Copyright (c) 2023 Lviv Polytechnic National University. All Rights Reserved.
#
# This program and the accompanying materials are made available under the terms
# of the Academic Free License v. 3.0 which accompanies this distribution, and is
# available at https://opensource.org/license/afl-3-0-php/
#
# SPDX-License-Identifier: AFL-3.0
##################################################################################
import os
import struct
import sys
import math

def writeResTxt(fName, result):
    with open(fName, 'w') as f:
        f.write(str(result))

def readResTxt(fName):
    result = 0.0
    try:
        if os.path.exists(fName):
            with open(fName, 'r') as f:
                result = f.read()
        else:
            raise FileNotFoundError(f"File {fName} not found.")
    except FileNotFoundError as e:
        print(e)
    return result

def writeResBin(fName, result):
    with open(fName, 'wb') as f:
        f.write(struct.pack('f', result))

def readResBin(fName):
    result = 0.0
    try:
        if os.path.exists(fName):
            with open(fName, 'rb') as f:
                result = struct.unpack('f', f.read())[0]
        else:
            raise FileNotFoundError(f"File {fName} not found.")
    except FileNotFoundError as e:
        print(e)
    return result

def calculate(x):
    if x != 0:
        return math.tan(x) / (3 * x)
    else:
        raise ValueError("x cannot be zero for the calculation.")

if __name__ == "__main__":
    data = float(input("Enter data: "))
    try:
        result = calculate(data)
        print(f"Result is: {result}")
        writeResTxt("textRes.txt", result)
        writeResBin("binRes.bin", result)
        print("Result is: {0}".format(readResBin("binRes.bin")))
        print("Result is: {0}".format(readResTxt("textRes.txt")))
    except (FileNotFoundError, ValueError) as e:
        print(e)
        sys.exit(1)
