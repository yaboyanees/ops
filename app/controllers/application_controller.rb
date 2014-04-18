class ApplicationController < ActionController::Base

before_action :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private 

  def configure_permitted_parameters
         devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :phone_number) }
         devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :first_name, :last_name, :phone_number, :m, :t, :w, :th, :f, :s, :su, :mor, :aft, :eve, :job_id, :training_id, :orientation_id) }  
  		 devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :first_name, :last_name, :phone_number, :m, :t, :w, :th, :f, :s, :su, :mor, :aft, :eve, :job_id, :training_id, :current_password, :orientation_id) }
  end
  
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :phone_number, :m, :t, :w, :th, :f, :s, :su, :mor, :aft, :eve, :job_id, :training_id, :current_password, :orientation_id)
  end
  
end