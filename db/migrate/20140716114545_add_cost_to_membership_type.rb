class AddCostToMembershipType < ActiveRecord::Migration
  def change
    add_column :membership_types, :am_cost, :decimal
  end
end
