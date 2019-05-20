class ApiintegrationController < ApplicationController

  def index
    if !params['email'].nil?
	    mail_box_wrapper = MailBoxLayerWrapper.new
	    respone  = mail_box_wrapper.check_email( params['email'] )
	    @email = params['email']
	    if respone['success'] == false
		    @status = respone['success']
		    @code = respone['error']['code']
		    @message = respone['error']	['info']
		else
		    @message = respone['smtp_check']
		    @status = 'success'
		end
	end
  end

end
