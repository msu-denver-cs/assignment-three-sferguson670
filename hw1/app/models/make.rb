class Make < ActiveRecord::Base
    has_many :cars
    validates_associated :cars
    
    validates :name, presence: true
    validates :name, format: { with: /\A[a-zA-z]+\z/, message: "only allows letters" }
    validates :country, presence: true
    validates :country, format: { with: /\A[a-zA-z]+\z/, message: "only allows letters" }
end
