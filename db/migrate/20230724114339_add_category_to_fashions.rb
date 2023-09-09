class AddCategoryToFashions < ActiveRecord::Migration[6.1]
  def change
    add_column :fashions, :category, :string
  end
end
