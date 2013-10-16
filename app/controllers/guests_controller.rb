class GuestsController < ApplicationController
  def index 
    @group = Group.new
  end

  def update_attendance
    @guest = Guest.find(params[:id])
    @guest.update_attribute(:coming, params[:coming])
    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.js 
    end
    

    # if @guest.update_attribute(:coming, params[:coming])
    #   redirect_to group_path(@guest.group), notice: '#{@guest.name} is coming? #{params[:coming]}.'
    # else
    #   redirect_to group_path(@guest.group), notice: 'Unable to update guests status.'
    # end
  end
end
