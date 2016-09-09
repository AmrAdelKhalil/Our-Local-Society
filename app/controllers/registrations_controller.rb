class RegistrationsController < Devise::RegistrationsController
  def after_sign_in_path_for(resource)
    actors_users_url
  end
end
