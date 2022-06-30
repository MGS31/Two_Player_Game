class Game 
  def initialize
    @player1 = Player.new("Player1")
    @player2 = Player.new("Player2")
  end

def start
  puts "New Game Stirbarted. Welcome #{player1.name} and #{player2.name}"
  turn
end

def next_question 
  question = Question.new
  question.ask_question
  question.check_answer
  if question.check_answer
    puts "Yes! You are correct!"
  else
    puts "Seriously? No!"
    take_life
  end
end

def check_standing
  if @player1.is_dead?
    @player2.winner
    @is_game_over = true
  elsif @player2.is_dead
    @player1.winner
    @is_game_over = true
  end
end

def show_lives
  puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
end  

def winner
  puts "#{Player.name} wins with the score of #{Player.lives}/3"
end

def turn (is_game_over)
  while is_game_over == false
    @player1.next_question
    check_standing
    @player2.next_question
    check_standing
    show_lives
    puts "Next Turn"
    turn
  end  
end

end  