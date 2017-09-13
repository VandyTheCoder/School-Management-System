class AddGenderToParents < ActiveRecord::Migration[5.1]
  def change
    add_column :parents, :gender, :string
  end
end
