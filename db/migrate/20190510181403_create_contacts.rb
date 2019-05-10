class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :nom_contact
      t.string :ville
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
