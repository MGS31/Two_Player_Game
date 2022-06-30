class Question 
  def initialize
    @num1 = ran(1..20)
    @num2 = ran(1..20)
    @sum = @num1 + @num2
  end

  def check_answer
    answer = gets.chomp
    @sum == answer
  end

  def ask_question
    puts "#{Player.name} What does #{num1} plus #{num2} equal?"
  end  
  
end 