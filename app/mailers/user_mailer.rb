class UserMailer < ActionMailer::Base
	default from: "from@example.com"
	include Resque::Mailer
	def post_email(id)
		@text = id
		mail(:to => "friedmanj98@gmail.com", :subject => "Someone Posted")
	end
end
