class GuestsController < ApplicationController
  def index 
    if session[:group]
      redirect_to group_path(session[:group])
    else
      @group = Group.new
    end
  end

  def update_attendance
    @guest = Guest.find(params[:id])
    @guest.update_attribute(:coming, params[:coming])
    respond_to do |format|
      format.html
      format.js 
    end
    

    # if @guest.update_attribute(:coming, params[:coming])
    #   redirect_to group_path(@guest.group), notice: '#{@guest.name} is coming? #{params[:coming]}.'
    # else
    #   redirect_to group_path(@guest.group), notice: 'Unable to update guests status.'
    # end
  end

  def view_all
    @guests = Guest.all
  end
  
end
