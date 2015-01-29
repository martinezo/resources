class Catalogs::EventTypesController < ApplicationController
  before_action :set_catalogs_event_type, only: [:show, :edit, :update, :destroy, :delete]
  helper_method :sort_column, :sort_direction

  # GET /catalogs/event_types
  # GET /catalogs/event_types.json
  def index
    #@catalogs_event_types = Catalogs::EventType.all
    @catalogs_event_types = Catalogs::EventType.search(params[:search]).order("#{sort_column} #{sort_direction}").paginate(per_page: 15, page:  params[:page])
  end

  # GET /catalogs/event_types/1
  # GET /catalogs/event_types/1.json
  def show
  end

  # GET /catalogs/event_types/new
  def new
    @catalogs_event_type = Catalogs::EventType.new
  end

  # GET /catalogs/event_types/1/edit
  def edit
  end

  # POST /catalogs/event_types
  # POST /catalogs/event_types.json
  def create
    @catalogs_event_type = Catalogs::EventType.new(catalogs_event_type_params)

    if @catalogs_event_type.save
      flash[:success] = t('notices.saved_successfully')
      index
    end

  end

  # PATCH/PUT /catalogs/event_types/1
  # PATCH/PUT /catalogs/event_types/1.json
  def update
    if @catalogs_event_type.update(catalogs_event_type_params)
      flash[:success] = t('notices.updated_successfully')
      index
    end
  end

  # DELETE /catalogs/event_types/1
  # DELETE /catalogs/event_types/1.json
  def destroy
    @catalogs_event_type.destroy
    index
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalogs_event_type
      @catalogs_event_type = Catalogs::EventType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalogs_event_type_params
      params.require(:catalogs_event_type).permit(:name)
    end

    def sort_column
      params[:sort] || 'name'
    end

    def sort_direction
      params[:direction] || 'asc'
    end
end
