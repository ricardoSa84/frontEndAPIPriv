module Api::V1
  class CoursesController < ApiController
  before_action :set_course, only: [:show, :update, :destroy]


  #Swagger
  swagger_controller :courses, 'sdfsfd mgm'


  swagger_api :index do
    summary "Fetches all User items"
    notes "This lists all the active users"
   # param :query, :page, :integer, :optional, "Page number"
    #param :path, :nested_id, :integer, :optional, "Team Id"
    #response :unauthorized
    #response :not_acceptable, "The request you made is not acceptable"
    #response :requested_range_not_satisfiable
  end

  # GET /courses
  def index
    @courses = Course.all

    render json: @courses
  end

  # GET /courses/1
  def show
    render json: @course
  end

  # POST /courses
  def create
    @course = Course.new(course_params)
    #saves the course
   if @course.save
      render json: @course, status: :created #, location: @course
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /courses/1
  def update
    if @course.update(course_params)
      render json: @course
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end


  # DELETE /courses/1
  def destroy
    @course.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def course_params
      params.require(:course).permit(:name, :school => [:id], :degree => [:id] )
      #params.require(:course).permit(:name, :school_attributes => [:id, :name] )
    end
  end
end