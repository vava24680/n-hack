class AddEstQuantityCurQuantityToActivity < ActiveRecord::Migration[5.1]
  def change
      add_column :activities,:est_quantity,:integer
      add_column :activities,:cur_quantity,:integer,:default=>0
      add_column :activities,:valid,:boolean,:default=>true
  end
end
