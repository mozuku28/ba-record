class UsersController < ApplicationController

  layout 'users'

  def index
    @users = User.all
  end

  def edit
    @users = User.find(params[:id])
  end

end
