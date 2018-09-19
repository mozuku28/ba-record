class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    if admin_signed_in?
      admins_top_path
    elsif user_signed_in?
      products_path
    else
      products_path
    end
  end

  def after_sign_out_path_for(resource)
    admin_session_path
  end

end
