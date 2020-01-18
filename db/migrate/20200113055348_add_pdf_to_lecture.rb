class AddPdfToLecture < ActiveRecord::Migration[5.2]
  def change
    add_column :lectures, :pdf, :binary
  end
end
