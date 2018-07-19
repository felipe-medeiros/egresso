class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :nome
      t.string :matricula
      t.integer :perfil
      t.integer :homologado
      t.references :course, foreign_key: true
      t.references :conclusion, foreign_key: true

      t.timestamps
    end
  end
end
