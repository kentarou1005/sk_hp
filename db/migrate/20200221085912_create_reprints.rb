class CreateReprints < ActiveRecord::Migration[5.2]
  def change
    create_table :reprints do |t|
      t.string :author
      t.string :book
      t.string :company
      t.date   :year

      t.timestamps
    end
  end
end
