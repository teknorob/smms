class CreateMembershipTypes < ActiveRecord::Migration
  def change
    create_table :membership_types do |t|
      t.string :tx_membership_type
      t.integer :nb_membership_duration
      t.string :cd_membership_type_code
      t.timestamps
    end
  end
end
