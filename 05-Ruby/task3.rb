
class Clock
  def initialize( h,m,s )
    @hour = h
    @minute = m
    @second = s
  end
  def print
     puts "The current time is = #{@hour}:#{@minute}:#{@second}"
  end
  def + (minute)
    if minute + @minute > 59
      @hour = @hour + 1
      @minute = ((minute + @minute) % 60)
    else
      @minute = minute +@minute
    end  
  end
   def + (minute)
    if minute + @minute > 59
      @hour = @hour + 1
      @minute = ((minute + @minute) % 60)
    else
      @minute = minute +@minute
    end  
  end
end

clock = Clock.new(10, 40, 0)
clock.print  # The current time is 10:00:00
clock + 30
clock.print # The current time is 11:10:00