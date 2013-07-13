Doorkeeper.configure do
  orm :active_record

  resource_owner_authenticator do
    User.find_by(id: session[:user_id]) || redirect_to(root_url)
  end

  resource_owner_from_credentials do |routes|
    User.find_by_email_and_password(params[:username], params[:password])
  end

  client_credentials :from_basic, :from_params, ->(request) do
    # application = Doorkeeper::AccessToken.find_by(token: sessions[:access_token]).application
    # [application.uid, application.secret]
  end
end
