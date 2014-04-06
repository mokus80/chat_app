class RemoveUserFromMessages < ActiveRecord::Migration
  def change
    remove_column :messages, :user, :string
  end
end
