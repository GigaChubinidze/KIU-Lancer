class Service < ApplicationRecord
    include  ImageUploader::Attachment(:image)
    belongs_to :user, optional: true
   
    validates :category, :description, :condition, :title, :price, presence: true

    CATEGORY = %w{Construction Cleaning Education Pleasure Health Fitness}
    CONDITION = %w{Contract No-Contract}
end
