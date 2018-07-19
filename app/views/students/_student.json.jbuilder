json.extract! student, :id, :nome, :matricula, :perfil, :homologado, :course_id, :conclusion_id, :created_at, :updated_at
json.url student_url(student, format: :json)
