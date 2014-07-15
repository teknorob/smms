class Membership < ActiveRecord::Base
  belongs_to :membership_type

  def save_new_membership
    self.membership_type != nil?
    begin
      self.dt_expiration_date = Date.today + self.membership_type.nb_membership_duration
    end
    self.save
  end

  def update_membership membership_type_id
      membership_type = MembershipType.find(membership_type_id)
      self.membership_type = membership_type
      old_date = if self.dt_expiration_date != nil &&  self.dt_expiration_date > Date.today
      then self.dt_expiration_date else Date.today end
      self.dt_expiration_date = (old_date + membership_type.nb_membership_duration.days )
      self.save
  end
end
