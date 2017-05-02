class DropContactsInfosTable < ActiveRecord::Migration[5.0]
  def change
  	drop_table :contacts_infos
  end
end
