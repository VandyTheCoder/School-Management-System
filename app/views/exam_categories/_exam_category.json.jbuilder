json.extract! exam_category, :id, :name, :description, :created_at, :updated_at
json.url exam_category_url(exam_category, format: :json)
