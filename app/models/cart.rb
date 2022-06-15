class Cart < ApplicationRecord
    has_many :line_items, dependent: :destroy

    def add_service(service)
        current_item = line_items.find_by(service_id: service.id)
        if current_item 
            current_item.increment(:quantity)
        else 
            current_item = line_items.build(service_id: service.id)
        end
        current_item
    end

    def total_price 
        line_items.to_a.sum do |i|
            i.total_price
        end
    end
end
