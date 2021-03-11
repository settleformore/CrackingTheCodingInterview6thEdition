# Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional structures?


def isUnique?(str)
    arr = str.tr(' ', '').downcase.chars
    arr.length == arr.uniq.length  
end

str = "Busy body"
puts isUnique?(str)
str = "Za be out in pjs"
puts isUnique?(str)
str = "Pajamas"
puts isUnique?(str)
str = "Cwm fjord veg balks nth pyx quiz."
puts isUnique?(str)