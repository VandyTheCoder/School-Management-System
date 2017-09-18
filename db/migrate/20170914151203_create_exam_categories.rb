class CreateExamCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :exam_categories do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
