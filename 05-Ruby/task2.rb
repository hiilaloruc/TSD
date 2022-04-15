def min_max(array)
    minV = array[0]
    maxV = array[0]
    min_sum = 0
    max_sum = 0
  
    for item in array do 
        if minV > item
            minV = item
        end
        if maxV < item
            maxV = item
        end
    end

    
    for item in array do
        if item != maxV #for min
            min_sum = min_sum + item
        end
        if item != minV #for max
            max_sum = max_sum + item
        end
    end
      puts "min Sum: #{min_sum}"
      puts "max Sum: #{max_sum}"

end

def decimal(binaryNum)
    m = 1
    decimal = 0
    currentDigit = 0

    for digit in binaryNum.digits
        currentDigit = digit
        decimal = decimal + (currentDigit*m) 
        m = m * 2
        if digit > 1
            puts "ArgumentError: #{binaryNum} is not a binary number"
            return
        end
      
    end
  puts puts "Binay: #{binaryNum} -> Decimal: #{decimal}"
  
  
end

min_max([1, 2, 3, 4, 5])  # 10 14
min_max([2, 8, 3, 5, 1])  # 11 18


decimal(101) #Binay: 101 -> Decimal: 5
decimal(121) #121 is not a binary number

