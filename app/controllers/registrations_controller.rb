class RegistrationsController < Devise::RegistrationsController

  #this function is taken from (https://github.com/plataformatec/devise/blob/master/app/controllers/devise/registrations_controller.rb)
  #but i added some validations
  def create
    build_resource(sign_up_params)

      #this is a private function to check params
      if check_some_validations
        redirect_to new_user_registration_path
      else #the next part taken form Devise on github
        resource.save
        yield resource if block_given?

        if resource.persisted?
          if resource.active_for_authentication?
            set_flash_message! :notice, :signed_up
            sign_up(resource_name, resource)
            respond_with resource, location: after_sign_up_path_for(resource)
          else
            set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
            expire_data_after_sign_in!
            respond_with resource, location: after_inactive_sign_up_path_for(resource)
          end
        else
          clean_up_passwords resource
          set_minimum_password_length
          respond_with resource
      end
    end
  end


  # for telling devise where to render after the sign_up
  def after_sign_in_path_for(resource)
    #this is rendering to SchedulesController#new
    new_tools_schedule_url
  end
  #this functions makes sure that some parameters are exists when sign_up
  def sign_up_params
    params.require(:user).permit(:first_name, :second_name, :email, :password, :password_confirmation)
  end
  #this functions makes sure that some parameters are exists when updateing account
  # def account_update_params
  #   params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
  # end

  private
    def check_some_validations
      resource[:first_name].empty? || resource[:second_name].empty?
    end
end
