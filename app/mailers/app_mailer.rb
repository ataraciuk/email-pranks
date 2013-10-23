class AppMailer < ActionMailer::Base
	def sendEmail(data)
		mail(from: data['from'],
			to: data['to'],
			cc: data['cc'],
			bcc: data['bcc'],
			subject: data['subject'],
			body: data['body'])
	end
end
