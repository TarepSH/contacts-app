class ChangebirthdaName < ActiveRecord::Migration[5.0]
  def change
  	  rename_column :contacts_infos, :birthda, :birthday

  end
end
