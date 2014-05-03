class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	belongs_to :job
	belongs_to :orientation
	belongs_to :training
	belongs_to :timecard
  	
	def fullname
		"#{first_name.titleize}" " " "#{last_name.titleize}"
	end
	
	def job_name
    	"#{job.name.titleize}"
    end
    
    def tname
    	"#{training.name}"
    end
    
    
    def orientationdate
    	"#{orientation.orientation_date.strftime("%A, %B %d at %I:%M%p")}"
    end
    
    def odate
    orientation.orientation_date
    end
    
    def tdate
    "#{training.certification_date.strftime("%A, %B %d")}"
    end
    
	def monday
		if m.present?
		"Monday"
			else
		end	
	end
	def tuesday
		if t.present?
		"Tuesday"
			else
		end	
	end
	def wednesday
		if w.present?
		"Wednesday"
			else
		end	
	end
	def thursday
		if th.present?
		"Thursday"
			else
		end	
	end
	def friday
		if f.present?
		"Friday"
			else
		end	
	end
	def saturday
		if s.present?
		"Saturday"
			else
		end	
	end
	def sunday
		if su.present?
		"Sunday"
			else
		end	
	end

	
	def morning
		if mor.present?
		"Morning"
			else
		end	
	end
	def afternoon
		if aft.present?
		"Afternoon"
			else
		end	
	end
	def evening
		if eve.present?
		"Evening"
			else
		end	
	end
	
	def mmor
		if monday && morning
			fullname
		else
		end	
	end
	
	def tmor
		if tuesday && morning
			fullname
		else
		end	
	end
	
	def wmor
		if wednesday && morning
			fullname
		else
		end	
	end
	
	def thmor
		if thursday && morning
			fullname
		else
		end	
	end
	
	def fmor
		if friday && morning
			fullname
		else
		end	
	end
	
	def smor
		if saturday && morning
			fullname
		else
		end	
	end
	
	def sumor
		if sunday && morning
			fullname
		else
		end	
	end
	
	def maft
		if monday && afternoon
			fullname
		else
		end	
	end
	
	def taft
		if tuesday && afternoon
			fullname
		else
		end	
	end
	
	def waft
		if wednesday && afternoon
			fullname
		else
		end	
	end
	
	def thaft
		if thursday && afternoon
			fullname
		else
		end	
	end
	
	def faft
		if friday && afternoon
			fullname
		else
		end	
	end
	
	def saft
		if saturday && afternoon
			fullname
		else
		end	
	end
	
	def suaft
		if sunday && afternoon
			fullname
		else
		end	
	end	

	def meve
		if monday && evening
			fullname
		else
		end	
	end
	
	def teve
		if tuesday && evening
			fullname
		else
		end	
	end
	
	def weve
		if wednesday && evening
			fullname
		else
		end	
	end
	
	def theve
		if thursday && evening
			fullname
		else
		end	
	end
	
	def feve
		if friday && evening
			fullname
		else
		end	
	end
	
	def seve
		if saturday && evening
			fullname
		else
		end	
	end
	
	def sueve
		if sunday && evening
			fullname
		else
		end	
	end	
	
end
