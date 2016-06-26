class Member < ActiveRecord::Base
  attr_accessor :sell, :bought, :sold, :buyrating, :sellrating, :bio, :reqtofill, :pwd

  def new(name, pass)
    @pwd = pass
    @name = name
    @sellrating = 0
    @buyrating = 0
    @sell = Array.new
    @bought = Array.new
    @sold = Array.new
    @bio = ""
    @reqtofill = Array.new
  end

  private
  def add_sell(item)
    @sell << item
  end

  private
  def add_req(newAsk)
    @reqtofill << newAsk
  end

  private
  def finish_req(req)
    @reqtofill.delete(req)
  end

  private
  def add_cart(tobuy)
    
  end

  public
  def change_srating(num)
    @sellrating += num
  end

  public
  def change_brating(num)
    @buyrating += num
  end

  public
  def display_info
    return [@sellrating, @sell, @sold]
  end
end
