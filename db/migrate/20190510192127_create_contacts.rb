class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :number
      t.string :town
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
