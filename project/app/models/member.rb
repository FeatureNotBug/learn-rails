class Member
  attr_accessor :sell, :bought, :sold, :buyrating, :sellrating, :bio, :asks

  private
  def add_sell()
  end

  private
  def add_ask(newAsk)
    asks << newAsk
  end

  private
  def finish_ask(req)
    asks.delete(req)
  end

  private
  def add_cart()
  end

  public
  def change_rating()
  end

  public
  def display_info()
  end
end
