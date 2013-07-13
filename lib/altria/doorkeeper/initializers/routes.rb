Rails.application.routes.append do
  use_doorkeeper

  devise_for :users
end
