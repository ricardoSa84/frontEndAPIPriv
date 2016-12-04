module Api::V1
  class CoursesController < ApiController
  before_action :set_course, only: [:show, :update, :destroy]

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
    #@course = Course.new(course_params)
    #takes que school to create a course
    #@aux = course_params.except(:school)
    #@course = @s.courses.create(@aux)

    #gets the school id
    @s = School.find( course_params[:school][:id] )
    #gets the degree id
    @d = Degree.find( course_params[:degree][:id] )
    #gets the name
    @name = course_params[:name]
    #Creates the course
    @course = Course.create(name:@name, degree: @d, school: @s )  
    #saves the course
   if @course.save
      render json: @course, status: :created #, location: @course
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /courses/1
  def update
    #gets the school id
    @s = School.find( course_params[:school][:id] )
    #gets the degree id
    @d = Degree.find( course_params[:degree][:id] )
    #gets the name
    @name = course_params[:name]
    #updates the course
    if @course.update(name:@name, degree: @d, school: @s)
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