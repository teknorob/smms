class Member < ActiveRecord::Base
  belongs_to :membership

  def save_new_member membership_type_id = nil
    membership_type_id != nil?
    begin
      membership = Membership.new
      membership.membership_type = MembershipType.find(membership_type_id) rescue nil
      membership.save_new_membership
      self.membership = membership
    end

    self.hs_member = Digest::MD5.hexdigest (self.to_s)
    self.save
  end
end
