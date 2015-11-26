class Bottle < ActiveRecord::Base
  before_save :fix_price

  def fix_price
    self.price = ((purchase_price * 1.25) / 5).floor * 5
  end
end
