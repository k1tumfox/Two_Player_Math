class Player
  attr_reader :name
  attr_accessor :lives   #also denotes player scores

  def initialize(name)
    @name=name
    @lives=3
  end

  def lose?
    @lives == 0
  end

  def incorrect
    puts "Sad Face!"
    @lives -= 1
  end

end
