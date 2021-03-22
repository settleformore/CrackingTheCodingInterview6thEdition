# Given two strings, write a method to decide if one is a permutation of the other.

def checkIfPermutation(s1, s2)
    s1.chars.sort == s2.chars.sort
end

s1 = "ABC"
s2 = "CBA"

p checkIfPermutation(s1, s2)