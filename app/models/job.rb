class Job < ActiveRecord::Base
	has_many :users
	belongs_to :training
	
    validates_presence_of :name, :description
	
	
	def job_name
    	"#{name.titleize}"
    end
    
    def tname
    "#{training.name.titleize}"
    end


end
