class AddColumnsToOrder < ActiveRecord::Migration[5.1]
  def change
      add_column :orders,:user_id,:integer
      add_column :orders,:item,:string
      add_column :orders,:sugar_level,:integer
      add_column :orders,:ice_level,:integer
      add_column :orders,:price,:integer
      add_column :orders,:activity_id,:integer
  end
end
