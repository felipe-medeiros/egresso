class ApplicationController < ActionController::Base
	before_action :permitted_parameter, if: :devise_controller?
	before_action :permitted_update_params, if: :devise_controller?

	protected

	def permitted_parameter
		devise_parameter_sanitizer.permit(:sign_up, keys: [:nome, :matricula, :perfil, :homologado, :course_id, :conclusion_id,
			contacts_attributes: [:id, :tipo, :valor, :_destroy], briefs_attributes: [:texto]])
	end

	def permitted_update_params
		devise_parameter_sanitizer.permit(:account_update, keys: [:nome, :matricula, :perfil, :homologado, :course_id, :conclusion_id,
			contacts_attributes: [:id, :tipo, :valor, :_destroy], briefs_attributes: [:texto]])
	end
end
