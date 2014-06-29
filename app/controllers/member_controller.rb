class MemberController < ApplicationController
  before_action :get_member, only: [:show, :edit, :destroy ]

  def show #Show a single member

  end

  def edit #Show the edit member form

  end

  def update #Update a single member

  end

  def destroy #Destroy a member

  end

  def index #List all members
    @members = Member.all
  end

  def new #Show a new member form
    @membership_type_list = MembershipType.all
  end

  def create #Create a new member
    member = Member.new(new_member_params)
    member.save
    member.update_attribute(:hs_member, Digest::MD5.hexdigest(member.to_s) )

    redirect_to member
  end

  private
  def new_member_params
    params.require(:member).permit([:id, :tx_first_name, :tx_last_name, :tx_address])
  end

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
      redirect_to :action => "index"
    end
  end

end

