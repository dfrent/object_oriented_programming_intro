class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
    @eats_at = eats_at
  end
#-------readers---------
  def name
    @name
  end

  def preferred_food
    @preferred_food
  end

  def meal_time
    @meal_time
  end

  def eats_at
    @eats_at
  end

# -----writers------------
  # def name=(name)
  #   @name = name
  # end
  #
  # def preferred_food
  #   @preferred_food = preferred_food
  # end
  #
  # def meal_time
  #   @meal_time = meal_time
  # end

  def eats_at
    if meal_time <= 11
        "#{meal_time + 1}AM"
    else
       "#{meal_time - 11}PM"
    end
  end

  def meow
    "my name is #{@name} and I like to eat at #{eats_at}"
  end
end

  cat = Cat.new("fluffy", "popcorn", 3)

  puts cat.meow
