module Api::V1
  class DisciplinesController < ApiController
    before_action :set_discipline, only: [:show, :update, :destroy]



  #Swagger
  swagger_controller :discipline, 'schools mgm'


  swagger_api :index do
    summary "Fetches all User items"
    notes "This lists all the active users"
   # param :query, :page, :integer, :optional, "Page number"
    #param :path, :nested_id, :integer, :optional, "Team Id"
    #response :unauthorized
    #response :not_acceptable, "The request you made is not acceptable"
    #response :requested_range_not_satisfiable
  end


    # GET /disciplines
    def index
      @disciplines = Discipline.all

      render json: @disciplines
    end

    # GET /disciplines/1
    def show
      render json: @discipline
    end

    # POST /disciplines
    def create
      @discipline = Discipline.new(discipline_params)

      if @discipline.save
        render json: @discipline, status: :created, location: @discipline
      else
        render json: @discipline.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /disciplines/1
    def update
      if @discipline.update(discipline_params)
        render json: @discipline
      else
        render json: @discipline.errors, status: :unprocessable_entity
      end
    end

    # DELETE /disciplines/1
    def destroy
      @discipline.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_discipline
        @discipline = Discipline.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def discipline_params
        params.require(:discipline).permit(:name)
      end
  end
end