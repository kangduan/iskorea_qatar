require 'mailgun'
class HomeController < ApplicationController
  def index_qatar
  end
  #email
  def write
    @name = params[:name]
    @email = params[:email]
    @content = params[:content]
    @phone = params[:phone]
    mg_client = Mailgun::Client.new("key-b89c6e6817c92297292abf8224e3aba8")

    message_params =  {
                   from: @email,
                   to:   'sdkim@korearental.co.kr',
                   subject: @name,
                   text:    @content
                  }

                  result = mg_client.send_message('sandboxb0a93879ac8a4048ba378d6ab300458f.mailgun.org', message_params).to_h!

                  message_id = result['id']
                  message = result['message']

            redirect_to "/"
  end
  def about_qatar
  end
  def product_qatar
  end



end
