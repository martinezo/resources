class Catalogs::HeadquartersController < ApplicationController
  before_action :set_catalogs_headquarter, only: [:show, :edit, :update, :destroy, :delete]
  helper_method :sort_column, :sort_direction

  # GET /catalogs/headquarters
  # GET /catalogs/headquarters.json
  def index
    #@catalogs_headquarters = Catalogs::Headquarter.all
    @catalogs_headquarters = Catalogs::Headquarter.search(params[:search]).order("#{sort_column} #{sort_direction}").paginate(per_page: 15, page:  params[:page])
  end

  # GET /catalogs/headquarters/1
  # GET /catalogs/headquarters/1.json
  def show
  end

  # GET /catalogs/headquarters/new
  def new
    @catalogs_headquarter = Catalogs::Headquarter.new
  end

  # GET /catalogs/headquarters/1/edit
  def edit
  end

  # POST /catalogs/headquarters
  # POST /catalogs/headquarters.json
  def create
    @catalogs_headquarter = Catalogs::Headquarter.new(catalogs_headquarter_params)
    if @catalogs_headquarter.save
      flash[:success] = t('notices.saved_successfully')
      index
    end
  end

  # PATCH/PUT /catalogs/headquarters/1
  # PATCH/PUT /catalogs/headquarters/1.json
  def update

    if @catalogs_headquarter.update(catalogs_headquarter_params)
      flash[:success] = t('notices.updated_successfully')
      index
    end

  end

  # DELETE /catalogs/headquarters/1
  # DELETE /catalogs/headquarters/1.json
  def destroy
    @catalogs_headquarter.destroy
    index
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalogs_headquarter
      @catalogs_headquarter = Catalogs::Headquarter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalogs_headquarter_params
      params.require(:catalogs_headquarter).permit(:name, :intitution_id, :responsible, :email, :phone, :comments)
    end

    def sort_column
      params[:sort] || 'name'
    end

    def sort_direction
      params[:direction] || 'asc'
    end
end
