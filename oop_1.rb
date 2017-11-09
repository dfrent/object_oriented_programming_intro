class Bank_account

  def initialize
    @balance = 0
    @interest_rate = 1
    @deposit = 0
    @withdrawl = 0
    @gain_interest = 1
  end
# readers
  def balance
    @balance
  end

  def interest_rate
    @interest_rate
  end

  def deposit
    @deposit
  end

  # writers
  def withdrawl= (amount)
    @withdrawl = (amount)
  end
    def gain_interest= (amount)
      @gain_interest = (amount)
    end

    def deposit= (gained)
      @deposit = (gained)
    end

  def balance= (total)
    @balance = (total)
  end

  # def interest_rate=
  #   @interest_rate =
  # end

end


bank_account = Bank_account.new

puts bank_account
