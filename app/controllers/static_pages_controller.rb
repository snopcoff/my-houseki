class StaticPagesController < ApplicationController
  def home
    @fooddrinks = Fooddrink.all
    @users = User.all
    
    @fd_types = FdType.all
  end
end
