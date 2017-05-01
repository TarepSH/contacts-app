class CreateContactsInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts_infos do |t|
      t.string :name
      t.string :email
      t.string :compay
      t.text :address
      t.integer :phone
      t.date :birthda

      t.timestamps
    end
  end
end
