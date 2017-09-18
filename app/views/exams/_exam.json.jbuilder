json.extract! exam, :id, :exam_category_id, :name, :start_date, :created_at, :updated_at
json.url exam_url(exam, format: :json)
