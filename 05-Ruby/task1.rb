module InstanceModule
    def square
      number = self * self
      puts number
    end
end

module ClassModule
    def sample(numm)
        if number >= 0 
           arr = Array.new(numm) { |e| e = rand(1000)}
           puts "#{arr}"
        else
           puts "ArgumentError: the number must be positive"
        end
    end
    alias :random :sample
end

class Integer
    include InstanceModule
    extend ClassModule
    def factorial
        if self >= 0 
           number = (1..self).inject(1) {|product, n| product * n}
           puts number
        else 
            puts "Runtime error: cannot count factorial for negative number"
        end
    end
end

9.factorial
-9.factorial
95.square
Integer.sample(84)
Integer.sample(-99)
Integer.random(7)
Integer.random(-7)