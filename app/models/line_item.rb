class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart
  
  def total_price
    if quantity == nil
      qnt = 1
    else
       qnt = quantity
    end
    product.price * qnt
  end
end
