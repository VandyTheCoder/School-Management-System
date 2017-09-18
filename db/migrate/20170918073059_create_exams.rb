class CreateExams < ActiveRecord::Migration[5.1]
  def change
    create_table :exams do |t|
      t.references :exam_category, foreign_key: true
      t.string :name
      t.date :start_date

      t.timestamps
    end
  end
end
