class AddPeriodToLecture < ActiveRecord::Migration[5.2]
  def change
    add_reference :lectures, :period, foreign_key: true
  end
end
