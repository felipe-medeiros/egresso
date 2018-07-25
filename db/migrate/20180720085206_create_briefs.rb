class CreateBriefs < ActiveRecord::Migration[5.2]
  def change
    create_table :briefs do |t|
      t.string :texto
      #t.integer :homologado
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
