def even_fibonacci_less above
    first, second, sum = 1, 2, 0
    while second < above
        sum += second if second.even?
        first, second = second, first + second
    end
    sum
end

p even_fibonacci_less 4_000_000