class Player
  def initialize(name)
    @lives = 3
    @name = name
  end  

def is_dead? 
  # puts "game over" if
   @lives == 0
end

def take_life
  @lives -= 1
end

end 