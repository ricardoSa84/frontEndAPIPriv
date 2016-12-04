module Api::V1
  class ApiController < ApplicationController
    # Generic API stuff here
	
	before_action :authenticate #, :except => [:login,:logout]
	before_action :autorize


	def autorize
		#if the user is API
		if @current_user.nil?
			@current_user = User.find_by(id: 1);
		end 
		#get the role associated with the user
		@role = Role.find_by(id: @current_user.role.id);

		#implement permissions
		if @role.name == 'Manager'
			if params[:action] == 'destroy'
				render :status => :forbidden, :json => 'Only admins can destroy'
			end
		elsif @role.name == 'User'
			if params[:action] == 'destroy'
				render :status => :forbidden, :json => 'Only admins can destroy'
			elsif params[:action] == 'create'
				render :status => :forbidden, :json => 'Only admins or managers can create'
			elsif params[:action] == 'update'
				render :status => :forbidden, :json => 'Only admins or managers can update'
			end
		#to test
		#elsif @role.name == 'Admin'	
		#	if params[:action] == 'index'
		#		render :status => :forbidden, :json => 'Only admins or managers can index'
		#	end
		end
	end


  	def login
  		#Rails.logger.debug  params[:username]
  		#Rails.logger.debug  params[:password]
  		@user =	User.find_by(name: params[:username], password: params[:password])
		#Rails.logger.debug @user
  	   	if @user.nil?
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