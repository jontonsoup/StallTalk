class ApplicationController < ActionController::Base
	protect_from_forgery
	has_mobile_fu

	rescue_from CanCan::AccessDenied do |exception|
    	redirect_to root_url, :alert => exception.message
  	end

	before_filter :set_request_format
	def set_request_format
		if is_mobile_device?
			request.format = :mobile
		end
	end

	def current_ability
  		@current_ability ||= Ability.new(current_stalltalkian)
	end
end
