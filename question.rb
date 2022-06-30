class Question 
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @sum = @num1 + @num2
  end

  def check_answer
    answer = gets.chomp.to_i
    @sum == answer
  end

  def ask_question
    puts "What does #{@num1} plus #{@num2} equal?"
  end  
  
end 