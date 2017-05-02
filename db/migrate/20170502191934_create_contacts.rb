class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :company
      t.text :address
      t.integer :phone
      t.date :birthday
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
