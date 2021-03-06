class Theater < ActiveRecord::Base
attr_accessible :cinema_id, :theater_number
attr_accessible :cinema_id, :theater_number
has_many :shows
has_many :seats, :dependent => :destroy
belongs_to :cinema

attr_accessor           :seat_num
attr_accessible         :seat_num

validates :seat_num, :presence => true
validates :seat_num, :presence => { :message => " is required" }

validate do |theater|
  if theater.seat_num == "0"
    theater.errors[:base] << "Please enter the number of seats in the selected theater."
  end
end

end
