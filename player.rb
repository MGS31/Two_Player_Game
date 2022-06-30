class Player
  attr_accessor :name, :lives
  
  def initialize(name)
    @lives = 3
    @name = name
  end  

def is_dead? 
   @lives == 0
end

def take_life
  @lives -= 1
end

def winner
  print "#{@name} wins with the score of #{@lives}/3\n"
end

end 