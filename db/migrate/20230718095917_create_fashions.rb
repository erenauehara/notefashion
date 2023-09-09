class CreateFashions < ActiveRecord::Migration[6.1]
  def change
    create_table :fashions do |t|
      t.string :genre
      t.text :about
      t.string :image

      t.timestamps
    end
  end
end
