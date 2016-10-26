class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        @fooddrinks = @user.fooddrinks
    end
end
