class Catalogs::ResourceTypesController < ApplicationController
  before_action :set_catalogs_resource_type, only: [:show, :edit, :update, :destroy, :delete]
  helper_method :sort_column, :sort_direction

  # GET /catalogs/resource_types
  # GET /catalogs/resource_types.json
  def index
    #@catalogs_resource_types = Catalogs::ResourceType.all
    @catalogs_resource_types = Catalogs::ResourceType.search(params[:search]).order("#{sort_column} #{sort_direction}").paginate(per_page: 15, page:  params[:page])
  end

  # GET /catalogs/resource_types/1
  # GET /catalogs/resource_types/1.json
  def show
  end

  # GET /catalogs/resource_types/new
  def new
    @catalogs_resource_type = Catalogs::ResourceType.new
  end

  # GET /catalogs/resource_types/1/edit
  def edit
  end

  # POST /catalogs/resource_types
  # POST /catalogs/resource_types.json
  def create
    @catalogs_resource_type = Catalogs::ResourceType.new(catalogs_resource_type_params)
    if @catalogs_resource_type.save
      flash[:success] = t('notices.saved_successfully')
      index
    end
  end

  # PATCH/PUT /catalogs/resource_types/1
  # PATCH/PUT /catalogs/resource_types/1.json
  def update
    if @catalogs_resource_type.update(catalogs_resource_type_params)
      flash[:success] = t('notices.updated_successfully')
      index
    end
  end

  # DELETE /catalogs/resource_types/1
  # DELETE /catalogs/resource_types/1.json
  def destroy
    @catalogs_resource_type.destroy
    index
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalogs_resource_type
      @catalogs_resource_type = Catalogs::ResourceType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalogs_resource_type_params
      params.require(:catalogs_resource_type).permit(:name, :description)
    end

    def sort_column
     params[:sort] || 'name'
    end

    def sort_direction
      params[:direction] || 'asc'
    end
end
