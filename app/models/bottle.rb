class Bottle < ActiveRecord::Base
  before_save :fix_price

  def fix_price
    self.price = ((purchase_price * 1.25 + 3) / 5).ceil * 5
  end
end
