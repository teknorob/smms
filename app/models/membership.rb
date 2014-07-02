class Membership < ActiveRecord::Base
  belongs_to :membership_type


  def save_new_membership
    self.membership_type != nil?
    begin
      self.dt_expiration_date= Date.today + self.membership_type.nb_membership_duration
    end
    self.save
  end
end
