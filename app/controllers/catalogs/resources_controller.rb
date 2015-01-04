class Catalogs::ResourcesController < ApplicationController
  before_action :set_catalogs_resource, only: [:show, :edit, :update, :destroy, :delete]
  helper_method :sort_column, :sort_direction

  # GET /catalogs/resources
  # GET /catalogs/resources.json
  def index
    #@catalogs_resources = Catalogs::Resource.all
    @catalogs_resources = Catalogs::Resource.search(params[:search]).order("#{sort_column} #{sort_direction}").paginate(per_page: 15, page:  params[:page])
  end

  # GET /catalogs/resources/1
  # GET /catalogs/resources/1.json
  def show
  end

  # GET /catalogs/resources/new
  def new
    @catalogs_resource = Catalogs::Resource.new
  end

  # GET /catalogs/resources/1/edit
  def edit
  end

  # POST /catalogs/resources
  # POST /catalogs/resources.json
  def create
    @catalogs_resource = Catalogs::Resource.new(catalogs_resource_params)
    if @catalogs_resource.save
      flash[:success] = t('notices.saved_successfully')
      index
    end
  end

  # PATCH/PUT /catalogs/resources/1
  # PATCH/PUT /catalogs/resources/1.json
  def update
    if @catalogs_resource.update(catalogs_resource_params)
      flash[:success] = t('notices.updated_successfully')
      index
    end
  end

  # DELETE /catalogs/resources/1
  # DELETE /catalogs/resources/1.json
  def destroy
    @catalogs_resource.destroy
    index
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalogs_resource
      @catalogs_resource = Catalogs::Resource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalogs_resource_params
      params.require(:catalogs_resource).permit(:abbr, :name, :resource_type_id, :description, :location, :active, :admin_user_id, :unique)
    end

    def sort_column
      params[:sort] || 'name'
    end

    def sort_direction
      params[:direction] || 'asc'
    end

end
