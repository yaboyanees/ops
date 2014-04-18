class Training < ActiveRecord::Base
	has_many :users
	has_many :jobs
	
    def tname
    "#{name.titleize}"
    end
    def tdate
    "#{certification_date.strftime("%A, %B %d")}"
    end
    
end
