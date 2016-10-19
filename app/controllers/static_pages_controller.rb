class StaticPagesController < ApplicationController
  def home
    @fooddrinks = Fooddrink.all
    @users = User.all
  end
end
