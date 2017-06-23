class CreateAcctivities < ActiveRecord::Migration[5.1]
  def change
    create_table :acctivities do |t|

      t.timestamps
    end
  end
end
