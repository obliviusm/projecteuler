require_relative 'problem3.rb'

def smallest_multiple2 num1, num2
    return num1 * num2 if num1 == 1 || num2 == 1
    
    num_factors = Hash.new(0)
    [num1, num2].each do |num|
        factors = fermat_factor num
        count_factors = Hash.new(0)
        factors.each{ |v| count_factors[v] += 1}
        num_factors[num] = count_factors
    end
    #p num_factors
    
    common_factors = num_factors[num1].merge(num_factors[num2]) do |key, oldval, newval|
         oldval > newval ? oldval : newval
    end
    #p common_factors
    
    multiple = 1
    common_factors.each do |k,v|
        multiple *= k ** v
    end
    multiple
end

def smallest_multiple n
    if n.length == 2
        smallest_multiple2(n[0], n[1])
    elsif n.length > 2
        smallest_multiple [smallest_multiple2(n[0], n[1]), n[2..-1]].flatten
    else
        n
    end
end


p smallest_multiple(Array(1..20))
#p (fermat_factor 630).inject(:*)