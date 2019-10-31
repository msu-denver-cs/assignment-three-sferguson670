class Factor < ActiveRecord::Base
  belongs_to :car       #foreign key - car_id
  belongs_to :part      #foreign key - part_id
end
