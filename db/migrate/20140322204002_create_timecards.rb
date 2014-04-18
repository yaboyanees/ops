class CreateTimecards < ActiveRecord::Migration
  def change
    create_table :timecards do |t|
      t.datetime :checkin_time
      t.datetime :checkout_time
      t.integer :user_id

      t.timestamps
    end
  end
end
