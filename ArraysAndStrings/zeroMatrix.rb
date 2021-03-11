# Write an algorithm such that if an element in an MxN matrix is 0, its entire row and column are set to 0

def zeroMatrix(arr)
    positions = []
    arr.each_with_index do |row, i|
        z = row.find_index(0)
        unless z.nil?
            positions << [i, z]
        end
    end
    arr.each_with_index do |row, i|
        pos = 0
        pos_len = positions.length
        row.each_with_index do |e, j|
            unless positions.empty?
                if j == positions[pos][1]
                    arr[i][j] = 0
                elsif i == positions[pos][0]
                    arr[i][j] = 0
                end
                unless (pos_len - 1) == 0
                    if j == positions[pos + 1][1]
                        arr[i][j] = 0
                    elsif i == positions[pos + 1][0]
                        arr[i][j] = 0
                    end
                end
            end
        end
        
    end
end

arr = [
    [0, 1, 2, 3, 4],
    [5, 6, 7, 8, 9],
]

res = [
    [0, 0, 0, 0, 0],
    [0, 6, 7, 8, 9],
]

p zeroMatrix(arr)
p res


arr = [
    [0, 1, 2, 3, 4],
    [5, 6, 7, 8, 9],
    [10, 11, 12, 13, 14],
]

res = [
    [0, 0, 0, 0, 0],
    [0, 6, 7, 8, 9],
    [0, 11, 12, 13, 14],
]

p zeroMatrix(arr)
p res

arr = [
    [14, 1, 2, 3, 4],
    [5, 6, 7, 8, 9],
    [10, 11, 12, 13, 0],
]

res = [
    [14, 1, 2, 3, 0],
    [5, 6, 7, 8, 0],
    [0, 0, 0, 0, 0],
]

p zeroMatrix(arr)
p res

arr = [
    [14, 1, 2, 3, 4],
    [5, 6, 0, 8, 9],
    [10, 11, 12, 13, 7],
]

res = [
    [14, 1, 0, 3, 4],
    [0, 0, 0, 0, 0],
    [10, 11, 0, 13, 7],
]
p zeroMatrix(arr)
p res

# advanced case
arr = [
    [14, 0, 2, 3, 4],
    [5, 6, 0, 8, 9],
    [10, 11, 12, 13, 7],
]

res = [
    [0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0],
    [10, 0, 0, 13, 7],
]

p zeroMatrix(arr)
p res

# Breaks on more complex one

arr = [
    [14, 0, 2, 3, 4],
    [5, 6, 0, 8, 9],
    [10, 11, 12, 13, 7],
    [15, 16, 17, 0, 18 ]
]

res = [
    [0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0],
    [10, 0, 0, 0, 7],
    [0, 0, 0, 0, 0 ]
]

p zeroMatrix(arr)
p res