class UserStepsController < ApplicationController
  include Wicked::Wizard
  steps :personal, :social
  
  def show
    @user = User.find(session[:user_id])
    render_wizard
  end
  
  def update
    @user = User.find(session[:user_id])
    @user.update_attributes(user_params) #ser user params based off of the form
    render_wizard @user #the method will try to save it and if succeed will continue to the next step if not render a new form for the same step. 
  end
  
  private
    def user_params
      params.permit(:email, :password, :name, :school, :twitter, :linkedin)
    end
  
  def finish_wizard_path
     root_path notice: 'Thanks you are all set'
  end
end
