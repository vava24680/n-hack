class RemoveValidFromActivity < ActiveRecord::Migration[5.1]
  def change
      remove_column :activities,:valid
  end
end
