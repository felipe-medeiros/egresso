class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameter, if: :devise_controller?
	before_action :configure_permitted_update_params, if: :devise_controller?

	protected

	def configure_permitted_parameter
		devise_parameter_sanitizer.permit(:sign_up, keys: [:nome, :matricula, :perfil, :homologado, :course_id, :conclusion_id,
			contacts_attributes: [:id, :tipo, :valor, :_destroy]])
	end

	def configure_permitted_update_params
		devise_parameter_sanitizer.permit(:account_update, keys: [:nome, :matricula, :perfil, :homologado, :course_id, :conclusion_id,
			contacts_attributes: [:id, :tipo, :valor, :_destroy]])
	end
end
