class MailBoxLayerWrapper
  require "uri"
  require "net/http"

  def check_email(email)
	url_string = 'http://apilayer.net/api/check?access_key='+ENV["MAILBOXLAYERAPIKEY"]+'&email='+email
	response = Net::HTTP.get(URI.parse(url_string))
    response_body = JSON.parse(response)
    return response_body
  end

end
