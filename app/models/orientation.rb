class Orientation < ActiveRecord::Base
	has_many :users
	
	def orientationdate
    "#{orientation_date.strftime("%A, %B %d at %I:%M%p")}"
    end
end
