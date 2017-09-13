class AddImageToParents < ActiveRecord::Migration[5.1]
  def change
    add_column :parents, :image, :string
  end
end
