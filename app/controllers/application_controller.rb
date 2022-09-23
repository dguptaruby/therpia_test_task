class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
	include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    redirect_to root_path
    flash[:alert] = 'You are not authorized to perform this action.'
  end


	protected
	 def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:email, :password, :password_confirmation, :first_name, :last_name, :start_date, :end_date, :monthly_charge,
               :user_role, :is_active, :image, :notes, :company_id, image_attributes: {})
    end
  end
end
