class AdminController < ApplicationController
  def index
    @users = User.all
    @fooddrinks = Fooddrink.all
  end

  def update_user
    user = User.find(params[:id])
    if user.has_role? :admin
      user.remove_role :admin
    else
      user.add_role :admin
    end
    
    redirect_to '/admin'
  end
  
  def destroy_user
    user = User.find(params[:id])
    user.destroy
    respond_to do |format|
      format.html { redirect_to admin_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
end
