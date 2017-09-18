json.extract! attendance, :id, :student_id, :start_date, :end_date, :status, :remark, :created_at, :updated_at
json.url attendance_url(attendance, format: :json)
