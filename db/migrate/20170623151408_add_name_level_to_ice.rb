class AddNameLevelToIce < ActiveRecord::Migration[5.1]
  def change
      add_column :ices,:name,:string
      add_column :ices,:level,:integer
  end
end
