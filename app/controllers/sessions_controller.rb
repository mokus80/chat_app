class SessionsController < ApplicationController

  def create
    info = auth_hash[:info]
    puts params, auth_hash
    user = User.find_or_create_by(name: info[:nickname], picture: info[:image])
    sign_in user
    redirect_to '/messages'
  end

  def destroy
    sign_out
    redirect_to '/'
  end

  protected

  def auth_hash
    #logger.info request.env['omniauth.auth']
    request.env['omniauth.auth']
  end

end
