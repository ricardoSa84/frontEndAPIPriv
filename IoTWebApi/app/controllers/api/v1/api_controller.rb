module Api::V1
  class ApiController < ApplicationController
    # Generic API stuff here

	before_action :authenticate, :except => [:login]

  	def login
  		#Rails.logger.debug  params[:username]
  		#Rails.logger.debug  params[:password]
  		@user =	User.find_by(name: params[:username], password: params[:password])
		#Rails.logger.debug @user
  	   	if @user.nil?
  	   		#Rails.logger.debug 'false'
  	   		render :status => :forbidden, :plain => "Authentication credentials provided were invalid"	     	
	    else
	    	render json:{ token: @user.api_key}
	    end
 	end

	def logout
	 	render json:{ message: 'logging out!'}
	end
  end
end