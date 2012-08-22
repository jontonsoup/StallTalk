class UserMailer < ActionMailer::Base
	default from: "from@example.com"
	include Resque::Mailer
	def post_email(id)
		debugger
		p = Post.find_by_id(id)
		@text = p.text
		mail(:to => "friedmanj98@gmail.com", :subject => "Someone Posted")
	end
end
