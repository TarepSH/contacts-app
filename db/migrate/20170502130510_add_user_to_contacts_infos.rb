class AddUserToContactsInfos < ActiveRecord::Migration[5.0]
  def change
    add_reference :contacts_infos, :user, foreign_key: true
  end
end
