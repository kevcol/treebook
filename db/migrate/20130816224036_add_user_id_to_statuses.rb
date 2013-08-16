class AddUserIdToStatuses < ActiveRecord::Migration
  def change
    add_column :statuses, :user_id, :integrer
    add_index :statuses, :user_id
    remove_column :statuses, :name
  end
end
