class UsersController < ApplicationController

  layout 'users'

  def index
    @users = User.page(params[:page]).reverse_order
    userx = User.search(params[:search])
      @users_search = userx.page(params[:page]).reverse_order
  end

  def edit
    @users = User.find(params[:id])
  end

  def search
    @users = User.search(params[:search])
    redirect_to admins_users_path
  end


end
