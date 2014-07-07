class Membership < ActiveRecord::Base
  belongs_to :membership_type


  def save_new_membership
    self.membership_type != nil?
    begin
      self.dt_expiration_date= Date.today + self.membership_type.nb_membership_duration
    end
    self.save
  end

  def update_membership membership_type
    membership_type != nil?
    begin
      self.membership_type = membership_type;
      #Check if the current membership exists and hasn't expired
      self.dt_expiration_date == nil || self.dt_expiration_date < Date.today?
      begin
        self.dt_expiration_date= self.dt_expiration_date + membership_type.nb_membership_duration
        flash[:alert] = "Membership reactivated, new expiration is " + self.dt_expiration_date
      end
      else
      begin
        old_date = self.dt_expiration_date
        self.dt_expiration_date= self.dt_expiration_date + membership_type.nb_membership_duration
        flash[:alert] = "Membership expiration extended from " + old_date + " to " + self.dt_expiration_date
      end
    end
    self.save
  end
end
