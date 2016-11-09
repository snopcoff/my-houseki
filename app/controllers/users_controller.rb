class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        @fooddrinks = @user.fooddrinks.paginate(page: params[:page], per_page: 9).order(created_at: :asc)
    end
end
