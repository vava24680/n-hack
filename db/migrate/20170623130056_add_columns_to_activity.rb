class AddColumnsToActivity < ActiveRecord::Migration[5.1]
  def change
      add_column :activities,:user_id,:integer
      add_column :activities,:title,:text
      add_column :activities,:shop_id,:integer
      add_column :activities,:cuttime,:datetime
      add_column :activities,:picktime,:datetime
      add_column :activities,:place,:string
  end
end
