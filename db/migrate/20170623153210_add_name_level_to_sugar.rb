class AddNameLevelToSugar < ActiveRecord::Migration[5.1]
  def change
      add_column :sugars,:name,:string
      add_column :sugars,:level,:integer
  end
end
