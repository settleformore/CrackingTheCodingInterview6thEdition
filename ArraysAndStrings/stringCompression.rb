# Implement a method to perform basic string compression using the counts of repeated characters. For example, the string aabcccccaaa would become a2b1c5a3. If the "compressed" string would not become smaller than the original string, your method should return the original string. You can assume the string has only uppercase and lowercase letters (a - z).

def stringCompression(str)
    # if compressed string is not smaller than original than return the original
    o_len = str.length
    c_str = ""
    arr = str.chars
    # p arr
    # p c_str = str.each_char.tally.map {|k, v| "#{k}#{v}"}.join
    arr.each_with_index do |c, i|
        count = 0
       if c == arr[i + 1]

       end
    end

    if c_str.length >= o_len
        return str
    end
    
    return c_str.uniq
end

str = "aabcccccaaa"
res = "a2b1c5a3"
p stringCompression(str)

str = str.upcase
p stringCompression(str)

str = "Bunny"
p stringCompression(str)

str = "interesting"
p stringCompression(str)

# more edge cases
str = "Hello World"
p stringCompression(str)