class GroupsController < ApplicationController

  def index 
    @group = Group.find_by_random_group_id(params[:random_group_id])
    
    if @group == nil
      flash[:notice] = "Sorry, there is no group with that ID."
      redirect_to guests_path
    else 
      session[:group] = @group
    end
  end 

  def show 
    @group = session[:group]
    @guests = @group.guests
  end

  def update 
    @group = session[:group]
    if @group.update_attribute(:email, params[:group][:email])
      redirect_to group_path(@group)
    end
  end

  def finish
    session[:group] = nil
  end


end
