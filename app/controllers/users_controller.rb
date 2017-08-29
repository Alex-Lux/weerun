class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_created_runs = Run.all.where(user: @user)
  end
end
