class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name, :limit=> 35
      t.text :description
      t.integer :training_id

      t.timestamps
    end
  end
end
