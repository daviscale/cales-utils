#!/usr/bin/python

import random

LOWERCASE_LETTERS = "abcdefghijklmnopqrstuvwxyz"
UPPERCASE_LETTERS = "ABCDEFGHIJKLMNOPQRSTUVWXZY"
SPECIAL_CHARS     = "!@#$%^&*()-=_+"
NUMBERS           = "1234567890"   

def randomChar(charset):
    return random.choice(charset)

def randomLowercase():
    return randomChar(LOWERCASE_LETTERS)

def randomUppercase():
    return randomChar(UPPERCASE_LETTERS)

def randomSpecialChar():
    return randomChar(SPECIAL_CHARS)

def randomNumber():
    return randomChar(NUMBERS)

if __name__ == "__main__":
    charSetSize = 4
    charSetRange = range(charSetSize)
    lowercase = [randomLowercase() for i in charSetRange]
    uppercase = [randomUppercase() for i in charSetRange]
    special_chars = [randomSpecialChar() for i in charSetRange]
    numbers = [randomNumber() for i in charSetRange]
    combined = lowercase + uppercase + special_chars + numbers
    random.shuffle(combined)
    password = ""
    for char in combined:
        password+=char
    print "Password is:"
    print password
    
