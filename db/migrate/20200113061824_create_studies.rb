class CreateStudies < ActiveRecord::Migration[5.2]
  def change
    create_table :studies do |t|
      t.string :book
      t.text   :details
      t.string :url
      t.timestamps
    end
  end
end
