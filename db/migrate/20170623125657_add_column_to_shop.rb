class AddColumnToShop < ActiveRecord::Migration[5.1]
  def change
      add_column :shops,:name,:text
      add_column :shops,:phone,:string
      add_column :shops,:address,:text
  end
end
