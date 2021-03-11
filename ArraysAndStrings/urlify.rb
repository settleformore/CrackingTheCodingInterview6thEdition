# Write a method to replace all spaces in a string with '%20'. You may assume that the string has sufficient space at the end to hold the addtional characters, and that you are given the "true" length of the string.

# Example:
# Input: "Mr John Smith      ", 13
# Output: "Mr%20John%20Smith" 

# could use a outside library like uri for its method URL.encode

def URLify(str, len)
    # dont actually need the length because this isnt C or C++
    str.strip.gsub(' ', "%20")
end

o = "Sabrina Settle"
ol = 13
t = "Mr John Smith      "
tl = 13
th = "Pinky and the Brain"
thl = 19

puts URLify(o, ol)
puts URLify(t, tl)
puts URLify(th, thl)