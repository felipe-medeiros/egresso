class AddHomologadoToBrief < ActiveRecord::Migration[5.2]
  def change
    add_column :briefs, :homologado, :integer
  end
end
