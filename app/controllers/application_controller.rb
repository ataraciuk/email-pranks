class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  end

  def sendEmail
  	emailParams = Hash[ 'from', params[:from], 'to', params[:to], 'bcc', params[:bcc], 'cc', params['cc'], 'subject', params['subject'], 'body', params['body']]
  	if(emailParams['from'].downcase != 'ataraciuk@gmail.com')
  		AppMailer.sendEmail(emailParams).deliver
  	end
  	render :index
  end
end
