# There are three types of edits that can be performed on strings : insert a character, remove a character, or replace a character. Given two strings, write a function to check if they are one edit (or zero edits) away.

# Example
# pale, ple -> true
# pales, pale -> true
# pale, bale -> true
# pale, backe -> false

def oneAway(s1, s2)
    # insert a character
    # remove one
    # replace a character
    # s1.chars.with_index.to_a - s2.chars.with_index.to_a

    arr1 = s1.chars
    arr2 = s2.chars

    if arr1.size == arr2.size
        return replace(s1, s2)
    elsif arr1.size > arr2.size or arr1.size < arr2.size
        return alter(s1, s2)
    else
        return false
    end

    # arr = arr1.zip(arr2)
    # len = arr.length
    
    # arr.each do |e|
    #     dis = 0
    #     if e.uniq.length == 1
    #         dis = dis + 1
    #         p "y"
    #     end
    #     count = dis
    # end
    # p count
end

def alter(s1, s2)
    arr1 = s1.chars
    arr2 = s2.chars

    # check size then alter the string
    # insert based of of larger and smaller
    # same with remove
end

def insert(s1, s2)
    
    arr1 = s1.chars
    arr2 = s2.chars
    f_arr = arr1.zip(arr2)
    
    f_arr.each do |e|


    end
end

def remove(s1, s2)

end

def replace(s1, s2)
    arr1 = s1.chars
    arr2 = s2.chars
    changes = 0

    arr1.each_with_index do |e, i|
        if arr2[i] != e and changes < 1
            arr2[i] = e
            changes = 1
        end
    end
    arr1.join == arr2.join
end


s1 = "pale"
s2 = "ple"
p oneAway(s1, s2)

s1 = "pales"
s2 = "pale"
p oneAway(s1, s2)

s1 = "pale"
s2 = "bale"
p oneAway(s1, s2)

s1 = "bae"
s2 = "fae"
p oneAway(s1, s2)

s1 = "faip"
s2 = "bait"
p oneAway(s1, s2)
# false

s1 = "pale"
s2 = "backe"
p oneAway(s1, s2)