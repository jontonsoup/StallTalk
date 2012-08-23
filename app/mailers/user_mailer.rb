class UserMailer < ActionMailer::Base
	default from: "from@example.com"
	include Resque::Mailer
	def post_email(texts, email, id, time)
		@text = texts
		@id = id
		@time = time

		mail(:to => email, :subject => "Someone Posted")
	end
end
