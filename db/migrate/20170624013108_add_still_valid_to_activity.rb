class AddStillValidToActivity < ActiveRecord::Migration[5.1]
  def change
      add_column :activities,:stillValid,:boolean,:default=>true
  end
end
