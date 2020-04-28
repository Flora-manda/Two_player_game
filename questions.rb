class Questions

  def initialize
    @number_1 = rand(20) + 1
    @number_2 = rand(20) + 1
    @result = @number_1 + @number_2
  end

  def question
    print "what does #{@number_1} plus #{@number_2} equals? \n>"
    user_input = gets.chomp
  

    if user_input.to_i == @result
      puts "YES! You're correct"
      return true
    else 
      puts "Seriously? No!"
      return false
    end
  end
end