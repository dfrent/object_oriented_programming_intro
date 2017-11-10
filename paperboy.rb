class Paperboy

# everyday user delievers is given house number to start and end
# gets paid $0.25/paper
#makes extra $0.30/paper over quota
# not making qutoa lose $2
# quota = ((experince/2) + 50)

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
    @quota
  end

# ----readers----
  def name
    @name
  end

  def experience
    @experience
  end

  def earnings
    @earnings = earnings
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
  @quota = ((experince/2) + 50)
end


end

paperboy = Paperboy.new("greg")


puts " hey #{paperboy.name} start your shift"
