json.extract! course, :id, :title, :image_url, :url, :status, :started, :completed, :created_at, :updated_at
json.url course_url(course, format: :json)
