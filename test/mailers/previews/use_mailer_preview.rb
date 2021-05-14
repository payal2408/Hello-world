# Preview all emails at http://localhost:3000/rails/mailers/use_mailer
class UseMailerPreview < ActionMailer::Preview
	def welcome_mail_preview
    	UseMailer.welcome_email(Use.first)
    end
end
