class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :nome
      t.string :matricula
      t.integer :perfil, :default => 0
      t.integer :homologado, :default => 0
      t.references :course, foreign_key: true
      t.references :conclusion, foreign_key: true

      t.timestamps
    end
  end
end
