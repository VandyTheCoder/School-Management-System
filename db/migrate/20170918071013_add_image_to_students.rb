class AddImageToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :image, :string
  end
end
