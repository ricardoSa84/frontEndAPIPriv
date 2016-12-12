module Api::V1
  class UsersController < ApiController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
      debugger
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
      debugger
    render json: @user
  end

  # POST /users
  def create
      debugger
    @user = User.new(user_params)  
    if @user.save
      UserMailer.mailRegisto(@user).deliver_now
      render json: @user ,status: :created #, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
      debugger
    if @user.update(user_params)
    @surname = user_params[:surname];
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
      debugger
    @user.destroy
    #returns the object destroyed
    render json: @user
  end

 def resetPassword
      debugger
      @user = User.find_by(email: params[:email]);
      @user.resetToken = SecureRandom.uuid;
      @user.resetDate = DateTime.now;
      if @user.save
        UserMailer.mailPassRecovery(@user).deliver_now
      else
        render :json => { :errors => @user.errors.full_messages }, :status => 422
      end     
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      debugger
        @user = User.find(params[:id])   
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      debugger
      params.require(:user).permit(:id, :name, :surname, :email, :password, :role => [:id] )
    end
  end
end