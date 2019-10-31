class Car < ActiveRecord::Base
  belongs_to :make
end

class Car < ActiveRecord::Base
    has_many:factors
    has_many:parts, through: :factors
    
    validates_associated :parts
end

