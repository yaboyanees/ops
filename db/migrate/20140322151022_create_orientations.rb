class CreateOrientations < ActiveRecord::Migration
  def change
    create_table :orientations do |t|
      t.datetime :orientation_date

      t.timestamps
    end
  end
end
