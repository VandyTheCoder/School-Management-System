class CreateAttendances < ActiveRecord::Migration[5.1]
  def change
    create_table :attendances do |t|
      t.references :student, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.string :status
      t.string :remark

      t.timestamps
    end
  end
end
