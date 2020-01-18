class CreateLectures < ActiveRecord::Migration[5.2]
  def change
    create_table :lectures do |t|
      t.string :name
      t.string :day
      t.mediumblob :pdf1
      t.mediumblob :pdf2
      t.mediumblob :pdf3
      t.mediumblob :pdf4
      t.mediumblob :pdf5
      # t.references :period, foreign_key: true
      t.timestamps
    end
  end
end
