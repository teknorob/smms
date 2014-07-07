class Membership < ActiveRecord::Base
  belongs_to :membership_type


  def save_new_membership
    self.membership_type != nil?
    begin
      self.dt_expiration_date = Date.today + self.membership_type.nb_membership_duration
    end
    self.save
  end

  <<-DOC
  == To be refactored==
  def update_membership membership_type
    if membership_type != nil
      self.membership_type = membership_type
      #Check if the current membership exists and hasn't expired
      if self.dt_expiration_date == nil
        self.dt_expiration_date = Date.today + membership_type.nb_membership_duration
      else
        old_date = self.dt_expiration_date
        self.dt_expiration_date= old_date + membership_type.nb_membership_duration
      end
      self.save
    end
  end
  =end
  DOC

  def update_membership membership_type
      self.membership_type = membership_type
      old_date = self.dt_expiration_date
      self.dt_expiration_date = old_date + membership_type.nb_membership_duration
      self.save
  end
end
