class LineItem < ApplicationRecord
  belongs_to :service
  belongs_to :cart

  def total_price 
    service.price.to_i * quantity.to_i
  end
end
