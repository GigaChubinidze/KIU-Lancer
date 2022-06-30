class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, 
         :omniauthable, omniauth_providers: [:facebook, :github]
  validates :name, presence: true
  has_many :services

  def self.create_from_provider_data(provider_data)
    where(provider: provider_data.provider, uid: provider_data.uid).first_or_create do |user|
      # user.name = provider_data.info.username
      user.email = provider_data.info.email 
      user.password = Devise.friendly_token[0, 20]
    end
  end
end
