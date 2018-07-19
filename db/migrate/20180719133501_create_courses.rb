class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :nome
      t.string :abreviacao
      t.string :site
      t.string :modalidade
      t.string :email

      t.timestamps
    end
  end
end
