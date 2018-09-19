class AdminsController < ApplicationController

  def index
  @admins = Admin.all
  end

  def top

  end

end
