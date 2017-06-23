class AddArrtimeToActivity < ActiveRecord::Migration[5.1]
  def change
      add_column :activities,:arrtime,:datetime
  end
end
