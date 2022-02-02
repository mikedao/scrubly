class TwilioController < ApplicationController 
    def create 
        TwilioService.send_text(params[:name])
        flash[:success] = "Your message has been sent!"
        redirect_to '/washes'
    end 
end 