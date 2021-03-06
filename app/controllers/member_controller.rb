class MemberController < ApplicationController
  before_action :get_member, only: [:show, :edit, :destroy, :update, :edit_membership, :update_membership, :qr_code ]

  def show #Show a single member

  end

  def edit #Show the edit member form

  end

  def update #Update a single member
    member = Member.update(@member, update_member_params)
    redirect_to @member
  end

  def edit_membership
    @membership_types = MembershipType.all
  end

  def update_membership
    @member.update_member_membership(get_membership_type_params)
    redirect_to @member
  end

  def destroy #Destroy a member
    @member.destroy
  end

  def index #List all members
    @members = Member.all
  end

  def new #Show a new member form
    @membership_type_list = MembershipType.all
  end

  def create #Create a new member
    member = Member.new(new_member_params)
    member.save_new_member(params[:membership_type])

    redirect_to member
  end

  def qr_code #View the member's QRCode page
  end

  private
  def new_member_params
    params.require(:member).permit([:id, :tx_first_name, :tx_last_name, :tx_address])
  end

  def update_member_params
    params.require(:member).permit([:id, :tx_first_name, :tx_last_name, :tx_address])
  end

  def get_member_params
    params.require(:id)
  end

  def get_membership_type_params
    params.require(:membership_type)
  end

  def get_member
    begin
      if @member.nil?
        @member = Member.find( get_member_params )
      end
    rescue ActiveRecord::RecordNotFound
      flash[:member] = "This member could not be found"
      redirect_to :action => "index"
    end
  end

end

