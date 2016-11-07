class StaticPagesController < ApplicationController
  def home
    @fooddrinks = Fooddrink.all
    @users = User.all
    
    @fd_types = FdType.all
    
    
    @recommendfood = Fooddrink.where(foodtype: true).order(avg: :desc)
    @recommenddrink = Fooddrink.where(foodtype: false).order(avg: :desc)
  end
end
