
def sum_square_diff n
    diff = 0
    n.each do |x|
        diff += ((n - [x]).collect{|y| y * x}).inject(:+)
    end
    diff
end

p sum_square_diff Array(1..100)