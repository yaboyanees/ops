class Timecard < ActiveRecord::Base
	belongs_to :user
    
    def hours
    	hours = (checkin_time - checkout_time).abs/3600
    	return hours
    end

	def fullname
		"#{user.first_name.titleize}" " " "#{user.last_name.titleize}"
	end
	
	def checkinday
    	"#{checkin_time.strftime("%B %d")}"
    end
    
    def timeline
    	"#{checkin_time.strftime("%I:%M%p")}" "-" "#{checkout_time.strftime("%I:%M%p")}"
    end
    
    def start_time
    	checkin_time
  	end
  	
end
