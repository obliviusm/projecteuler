
require_relative 'timer.rb'

def fermat_factor n
    factors = []
    while n % 2 == 0
        factors.push 2
        n /= 2
    end
    return factors if n == 1

    a = Math.sqrt(n).floor
    
    if a * a == n 
        factors += [fermat_factor(a), fermat_factor(a)].flatten  
        return factors
    end
    
    begin
        a += 1
        b2 = a * a - n
        b = Math.sqrt(b2)
    end while b.ceil - b.floor == 1
    
    if a + b == n && a - b == 1
        factors.push (a + b).to_i
    else
        factors += [fermat_factor(a + b), fermat_factor(a - b)].flatten
    end
    factors
end


#time = Timer.exec_time do
#    p fermat_factor 23456
#end
#p time