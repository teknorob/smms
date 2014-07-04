class MembershipTypeController < ApplicationController
  before_action :get_membership_type, only: [:show, :edit, :destroy, :update ]

  def show #Show a single member

  end

  def edit #Show the edit member form

  end

  def update #Update a single member
    MembershipType.update(@membership_type, update_membership_type_params)
    redirect_to :action => "index"
  end

  def destroy #Destroy a member

  end

  def index #List all members
    @membership_types = MembershipType.all
  end

  def new #Show a new member form
  end

  def create #Create a new member
    membership_type = MembershipType.new( new_membership_type_params )
    membership_type.save
    redirect_to membership_type
  end

  private
  def new_membership_type_params
    params.require(:membership_type).permit([:id,:cd_membership_type_code,:nb_membership_duration,:tx_membership_type])
  end

  def update_membership_type_params
    params.require(:membership_type).permit([:id,:cd_membership_type_code,:nb_membership_duration,:tx_membership_type])
  end

  def get_membership_type_params
    params.require(:id)
  end

  def get_membership_type
    begin
      if @membership_type.nil?
        @membership_type = MembershipType.find( get_membership_type_params )
      end
    rescue ActiveRecord::RecordNotFound
      flash[:membership_type] = "This member could not be found"
      redirect_to :action => "index"
    end
  end
end
