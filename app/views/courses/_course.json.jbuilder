json.extract! course, :id, :nome, :abreviacao, :site, :modalidade, :email, :created_at, :updated_at
json.url course_url(course, format: :json)
