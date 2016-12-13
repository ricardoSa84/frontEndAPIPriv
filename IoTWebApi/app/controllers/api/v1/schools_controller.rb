module Api::V1
  class SchoolsController < ApiController
  before_action :set_school, only: [:show, :update, :destroy]

  swagger_controller :schools, "Schools Management"

  swagger_api :index do
    summary "Fetches all School items"
    notes "This lists all the active Schools"
    response :unauthorized
    response :not_acceptable, "School ID doesn't exist"
  end
  
  # GET /schools
  def index
    @schools = School.all

    render json: @schools
  end



  # GET /schools/1
  def show
    render json: @school
  end

  swagger_api :show do
    summary "Fetches a School item"
    notes "This lists an active School"
    param :id, :integer, :required, "User ID"
    #param :path, :nested_id, :integer, :optional, "Team Id"
    response :unauthorized
    response :not_acceptable, "School ID doesn't exist"
  end

  # POST /schools
  def create
    @school = School.new(school_params)

    if @school.save
      render json: @school, status: :created#, location: @school
    else
      render json: @school.errors, status: :unprocessable_entity
    end
  end

  swagger_api :create do
    summary "Creates a School item"
    notes "Creates a School item"
    #param :id, "Course ID"
    #param :path, :nested_id, :integer, :optional, "Team Id"
    response :unauthorized
    response :not_acceptable, "School ID doesn't exist"
  end

  # PATCH/PUT /schools/1
  def update
    if @school.update(school_params)
      render json: @school
    else
      render json: @school.errors, status: :unprocessable_entity
    end
  end

  swagger_api :update do
    summary "Updates a School item"
    notes "Updates a School item"
    param :id, :integer, :required, "User ID"
    #param :path, :nested_id, :integer, :optional, "Team Id"
    response :unauthorized
    response :not_acceptable, "School ID doesn't exist"
  end

  # DELETE /schools/1
  def destroy
    @school.destroy
  end

  swagger_api :destroy do
    summary "Destroys a School item"
    notes "Destroys a School item"
    param :id, :integer, :required, "User ID"
    #param :path, :nested_id, :integer, :optional, "Team Id"
    response :unauthorized
    response :not_acceptable, "School ID doesn't exist"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school
      @school = School.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def school_params
      params.require(:school).permit(:name, :country, :distric, :city, :county, :postCode, :addressDetails)
    end
  end
end