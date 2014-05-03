# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Job.create(:name => "clerk", :description => "description here", :training_id => "1")
# Job.create(:name => "food sorter", :description => "description here", :training_id => "2")
# Job.create(:name => "cook", :description => "description here", :training_id => "2")
# Job.create(:name => "assistant", :description => "description here", :training_id => "3")
# 
Orientation.create(:orientation_date => "2014-03-22 08:00:00.000000")
Orientation.create(:orientation_date => "2014-04-22 08:00:00.000000")
Orientation.create(:orientation_date => "2014-05-22 08:00:00.000000")
# 
Training.create(:name => "computer training", :certification_date => "2014-03-22")
Training.create(:name => "food handler course", :certification_date => "2014-04-22")
Training.create(:name => "no training", :certification_date => "2014-05-22")

User.create(:email => "admin@ops.com", :password => "volunteer", :first_name => "Anees", :last_name => "Merzi", :phone_number => "254-595-5555", :admin => "t" )