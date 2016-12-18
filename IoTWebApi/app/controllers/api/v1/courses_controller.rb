module Api::V1
  class CoursesController < ApiController
  before_action :set_course, only: [:show, :update, :destroy]

  swagger_controller :courses, "Courses Management"


  swagger_api :index do
    summary "Fetches all Courses items"
    notes "This lists all the active Courses"
    response :unauthorized
    response :not_acceptable, "Course ID doesn't exist"
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

  swagger_api :show do
    summary "Fetches a Courses items"
    notes "This lists an active Course"
    param :id, :integer, :required, "User ID"
    #param :path, :nested_id, :integer, :optional, "Team Id"
    response :unauthorized
    response :not_acceptable, "Course ID doesn't exist"
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

  swagger_api :create do
    summary "Creates a Courses item"
    notes "Creates a Courses item"
    #param :id, "Course ID"
    param :course ,:name, :string, :optional, "Name"
    #param :path, :nested_id, :integer, :optional, "Team Id"

    response :unauthorized
    response :not_acceptable, "Course ID doesn't exist"
  end

  # PATCH/PUT /courses/1
  def update
    if @course.update(course_params)
      render json: @course
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  swagger_api :update do
    summary "Updates a Courses item"
    notes "Updates a Courses item"
    param :id, :integer, :required, "User ID"
    param_list :course ,:name, :string, :optional, "Name"
    param_list :course, :school, :nested_id, :integer, :optional, "school Id"
    param_list :course, :degree, :nested_id, :integer, :optional, "degree Id"
    #param :path, :nested_id, :integer, :optional, "Team Id"
    response :unauthorized
    response :not_acceptable, "Course ID doesn't exist"
  end

  # DELETE /courses/1
  def destroy
    @course.destroy
  end

  swagger_api :destroy do
    summary "Destroys a Courses item"
    notes "Destroys a Courses item"
    param :id, :integer, :required, "User ID"
    #param :path, :nested_id, :integer, :optional, "Team Id"
    response :unauthorized
    response :not_acceptable, "Course ID doesn't exist"
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