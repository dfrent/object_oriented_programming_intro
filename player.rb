class Player

  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5

  end

# --------readers-----------
  def gold_coins
  @gold_coins
  end

  def health_points
    @health_points
  end

  def lives
    @lives
  end

#--------writers--------







#-------INSTANCE---------
  def level_up
     @lives += 1
  end

  def collect_treasure
    @gold_coins += 1
    unless @gold_coins == 0
      if @gold_coins % 10 == 0
        level_up
      end
    end
  end

  def do_battle(damage)
     @health_points -= (damage)
      if @health_points <= 0
        @lives -= 1 && @health_points += 10
      end
      if @lives == 0
        @restart
      end

  end

  def restart
    if @lives == 0
      player.new
    end
  end


#



end


player = Player.new

# puts player.inspect
# puts player.collect_treasure
# puts player.inspect




puts player.inspect
puts player.do_battle(10)
puts player.inspect
