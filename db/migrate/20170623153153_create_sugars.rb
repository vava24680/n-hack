class CreateSugars < ActiveRecord::Migration[5.1]
  def change
    create_table :sugars do |t|

      t.timestamps
    end
  end
end
