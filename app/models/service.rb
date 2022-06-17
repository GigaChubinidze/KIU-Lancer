class Service < ApplicationRecord
    before_destroy :not_referenced_by_any_line_item
    include  ImageUploader::Attachment(:image)
    belongs_to :user, optional: true
    has_many :line_items
    validates :category, :description, :condition, :title, :price, presence: true

    CATEGORY = %w{Construction Cleaning Education Pleasure Health Fitness}
    CONDITION = %w{Contract No-Contract}

    private 
        def not_referenced_by_any_line_item
            unless line_items.empty?
                errors.add(:base, "Line items present")
                throw :abort
            end
        end
end
