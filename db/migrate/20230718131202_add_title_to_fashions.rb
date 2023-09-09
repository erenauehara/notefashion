class AddTitleToFashions < ActiveRecord::Migration[6.1]
  def change
    add_column :fashions, :title, :string
  end
end
