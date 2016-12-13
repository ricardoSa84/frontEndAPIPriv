module Api::V1
  class SchoolsController < ApiController
  before_action :set_school, only: [:show, :update, :destroy]


  #Swagger
  swagger_controller :schools, 'schools mgm'


  swagger_api :index do
    summary "Fetches all User items"
    notes "This lists all the active users"
   # param :query, :page, :integer, :optional, "Page number"
    #param :path, :nested_id, :integer, :optional, "Team Id"
    #response :unauthorized
    #response :not_acceptable, "The request you made is not acceptable"
    #response :requested_range_not_satisfiable
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

  # POST /schools
  def create
    @school = School.new(school_params)

    if @school.save
      render json: @school, status: :created#, location: @school
    else
      render json: @school.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /schools/1
  def update
    if @school.update(school_params)
      render json: @school
    else
      render json: @school.errors, status: :unprocessable_entity
    end
  end

  # DELETE /schools/1
  def destroy
    @school.destroy
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