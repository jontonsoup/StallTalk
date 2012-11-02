class ApplicationController < ActionController::Base
	protect_from_forgery
	has_mobile_fu
	#before_filter :authenticate_stalltalkian!

	before_filter :set_request_format
	def set_request_format
		if is_mobile_device?
			request.format = :mobile
		end
	end
end
