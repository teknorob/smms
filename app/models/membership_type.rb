class MembershipType < ActiveRecord::Base

  def am_cost
    ActionController::Base.helpers.number_to_currency(self[:am_cost])
  end
end
