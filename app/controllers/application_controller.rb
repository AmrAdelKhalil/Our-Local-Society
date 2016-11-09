class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception el 2dema
  protect_from_forgery with: :null_session
  #this overwrite inner function in Devise called (after_sign_in_path_for)
  #through this i can choose where to go
  #but this does not work when registring a new user, so i have to
  #make my own class RegistrationsController that inherets from Drvise
  #See 'controllers/registrations_contrller.rb'
  def after_sign_in_path_for(resource_or_scope)
   actors_users_url #redirect to 'actor/users#index'
  end
end
