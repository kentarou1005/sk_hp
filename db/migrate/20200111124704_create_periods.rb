class CreatePeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :periods do |t|
      t.integer :periods
      t.time :start_time
      t.time :end_time
      t.timestamps
    end
  end
end
