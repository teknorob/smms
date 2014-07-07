class MembershipController < ApplicationController

  def update
  end

  def edit
    get_member
    @membership = @member.membership
    @membership_type = @member.membership.membership_type
  end

  def destroy
  end

  private

  def get_member_params
    params.require(:id)
  end

  def get_member
    begin
      if @member.nil?
        @member = Member.find( get_member_params )
      end
    rescue ActiveRecord::RecordNotFound
      flash[:member] = "This member could not be found"
      redirect_to :action => "member#index"
    end
  end
end
