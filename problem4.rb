class Integer
    def polindrom?
        self.to_s.split('').reverse.join.to_i.eql? self
    end
end

def max_polindrom digits
    polindroms = []
    for a in (10 ** digits).downto(10 ** digits.pred)
        for b in (10 ** digits).downto(10 ** digits.pred)
            c = a * b
            polindroms.push c if c.polindrom? 
            #p polindroms.last
        end
    end
    polindroms.max
end

p max_polindrom 3
#123321.polindrom?