class ApplicationController < ActionController::API
	#Para serializar todos os objectos
	include ActionController::Serialization

	#Para autenticar com token 
	include ActionController::HttpAuthentication::Token::ControllerMethods

	  # Add a before_action to authenticate all requests.
	  # Move this to subclassed controllers if you only
	  # want to authenticate certain methods.



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


	  #before_action :authenticate

	  protected

	  # Authenticate the user with token based authentication
	  def authenticate
	    authenticate_token || render_unauthorized
	  end

	  def authenticate_token
	    authenticate_with_http_token do |token, options|
	      @current_user = User.find_by(api_key: token)
	    end
	  end

	  def render_unauthorized(realm = "Application")
	    self.headers["WWW-Authenticate"] = %(Token realm="#{realm.gsub(/"/, "")}")
	    render json: 'Bad credentials', status: :unauthorized
	  end

end
