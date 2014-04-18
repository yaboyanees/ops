class AfterRegisterController < ApplicationController
  before_filter :authenticate_user!
 include Wicked::Wizard
  
  steps :add_personal, :add_date

  def show
    @user = current_user
    case step
    when :add_date
    end
    render_wizard
  end
  
  def update
    @user = current_user
    @user.update_attributes(user_params)
    render_wizard @user
  end
  
end


