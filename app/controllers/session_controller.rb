class SessionController < ApplicationController
  def create
    user = User.find_or_create_by(
      name: env['omniauth.auth']['info']['name'],
      uid:  env['omniauth.auth']['uid'],
    )
    session[:user_id] = user.id
    redirect_to ideas_path
  end

  def destroy
    session.destroy
    redirect_to ideas_path
  end
end
