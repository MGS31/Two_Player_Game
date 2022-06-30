class Game 
  def initialize
    @player1 = Player.new("Player1")
    @player2 = Player.new("Player2")
    @user_turn = @player1
    @is_game_over = false
  end

def start
  puts "New Game Started. Welcome #{@player1.name} and #{@player2.name}"
  turn
end

def next_question 
  puts "-----Next Turn-----"
  question = Question.new
  question.ask_question
  if question.check_answer
    puts "Yes! You are correct!"
  else
    puts "Seriously? No!"
    @user_turn.take_life
  end
  if @user_turn.name == @player1.name
  @user_turn = @player2
  else 
    @user_turn = @player1
  end
end

def check_standing
  if @player1.is_dead?
    @is_game_over = true
    @player2.winner
  elsif @player2.is_dead?
    @is_game_over = true
    @player1.winner
  end
end

def show_lives
  puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
end  

def turn
  while @is_game_over == false
    next_question
    check_standing
    show_lives
    turn
  end  
end

end  