class AdminController < ApplicationController
  def index
    @users = User.all
    @fooddrinks = Fooddrink.all
  end

  def update_user
    user = User.find(params[:id])
    if user.roles.first.equal? :admin
      user.remove_role user.roles.first
    else
      user.add_role :admin
    end
    
    redirect_to '/admin'
  end
end
