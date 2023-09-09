class AddUserIdToFashions < ActiveRecord::Migration[6.1]
  def change
    add_column :fashions, :user_id, :integer
  end
end
