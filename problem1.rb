
require 'active_support/core_ext/enumerable.rb'

def exec_time
   start = Time.now
   yield
   Time.now - start
end

def find_multiples below, *numbers
    multiplies = []
    for num in 1...below 
        multiplies.push num if numbers.count{ |x| num % x == 0} > 0 
    end
    multiplies.sum
end

#time = exec_time{ 
p find_multiples 1000, 3, 5
#p "Execution time: #{time}"