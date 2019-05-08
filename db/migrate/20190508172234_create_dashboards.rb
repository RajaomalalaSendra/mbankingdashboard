class CreateDashboards < ActiveRecord::Migration[5.2]
  def change
    create_table :dashboards do |t|
      t.string :nom
      t.string :cartier
      t.string :operateur
      t.string :numero
      t.string :ref
      t.integer :net
      t.integer :brut
      t.integer :frais_operateur
      t.integer :autre_frais
      t.belongs_to :user, idex: true
      t.timestamps
    end
  end
end
