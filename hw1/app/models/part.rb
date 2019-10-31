class Part < ActiveRecord::Base
    has_many :factors
    has_many :cars, through: :factors
    
    validates :name, presence: true
    validates :name, format: { with: /\A[a-zA-z]+\z/, message: "only allows letters" }
end
