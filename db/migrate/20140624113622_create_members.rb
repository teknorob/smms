class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :tx_address
      t.string :tx_first_name
      t.string :tx_last_name
      t.string :hs_member
      t.references :membership, index: true

      t.timestamps
    end
  end
end
