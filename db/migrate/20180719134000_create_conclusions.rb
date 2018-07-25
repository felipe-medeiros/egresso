class CreateConclusions < ActiveRecord::Migration[5.2]
  def change
    create_table :conclusions do |t|
      t.string :ano, :default => "2018"
      t.string :semestre, :default => "2"

      t.timestamps
    end
  end
end
