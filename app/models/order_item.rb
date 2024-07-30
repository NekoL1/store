class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product


  def count 
    return quantity * product.price
  end

end
