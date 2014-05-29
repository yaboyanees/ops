class Job < ActiveRecord::Base
	has_many :users
	belongs_to :training
	
    validates_presence_of :name, :description, :training_id
	
	
	def job_name
    	"#{name.titleize}"
    end
    
    
    def tname
    "#{training.name.titleize}"
    end

	def tdate
    "#{training.certification_date.strftime("%A, %B %d")}"
    end
    
	def tcheckdate
    training.certification_date
    end

end
