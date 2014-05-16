class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.string :name, :limit=> 50
      t.date :certification_date

      t.timestamps
    end
  end
end
