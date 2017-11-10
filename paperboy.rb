class Paperboy

# everyday user delievers is given house number to start and end
# gets paid $0.25/paper
#makes extra $0.30/paper over quota
# not making qutoa lose $2
# quota = ((experince/2) + 50papers)

  def initialize(name)
    @name = name
    @experience = 0.0
    @earnings = 0.0
    @quota = 50.0
    @first_route = 0.0
  end

# ----readers----
  def name
    @name
  end

  def experience
    @experience
  end

  def earnings
    @earnings
  end

  #----Writers----
  def name=(name)
    @name = name
  end

  def experience=(experience)
    @experience = experience
  end


#----instances----
  def quota
    @quota += (@experience/2)
    return @quota
  end

  def deliver(start_address, end_address)
    total_houses = (start_address - end_address).abs
    @experience +=  total_houses
    if total_houses > @quota
      first_route = (@quota.to_f*0.25 + (total_houses - @quota.to_f)*0.5)
      @earnings += @first_route
    else
      @first_route = (total_houses.to_f*0.25)
    end

    if total_houses < @quota
      @first_route -= 2
      @earnings += first_route
    end
    return first_route
  end

  def report
    "im #{name}, I've been working hard to deiver #{experience}papers and ive earned $#{earnings} so far!"
  end

end

paperboy = Paperboy.new("greg")


puts " hey #{paperboy.name} start your shift"

paperboy.deliver(102, 159)

puts paperboy.report
