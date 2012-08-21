class UserMailer < ActionMailer::Base
	include Resque::Mailer
	default from: "from@example.com"

	def post_email(post)
		mail(:to => "friedmanj98@gmail.com", :subject => "Someone Posted")
	end
end
