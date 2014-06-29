class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.datetime :dt_expiration_date
      t.references :membership_type, index: true

      t.timestamps
    end
  end
end
