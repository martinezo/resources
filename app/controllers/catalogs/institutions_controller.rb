class Catalogs::InstitutionsController < ApplicationController
  before_action :set_catalogs_institution, only: [:show, :edit, :update, :destroy, :delete]
  helper_method :sort_column, :sort_direction

  # GET /catalogs/institutions
  # GET /catalogs/institutions.json
  def index
    @catalogs_institutions = Catalogs::Institution.search(params[:search]).order("#{sort_column} #{sort_direction}").paginate(per_page: 15, page:  params[:page])
  end

  # GET /catalogs/institutions/1
  # GET /catalogs/institutions/1.json
  def show
  end

  # GET /catalogs/institutions/new
  def new
    @catalogs_institution = Catalogs::Institution.new
  end

  # GET /catalogs/institutions/1/edit
  def edit
  end

  # POST /catalogs/institutions
  # POST /catalogs/institutions.json
  def create
    @catalogs_institution = Catalogs::Institution.new(catalogs_institution_params)

    autorize! :create, @catalogs_institution

    if @catalogs_institution.save
      flash[:success] = t('notices.saved_successfully')
      index
    end
  end

  # PATCH/PUT /catalogs/institutions/1
  # PATCH/PUT /catalogs/institutions/1.json
  def update
    autorize! :update, @catalogs_institution
    if @catalogs_institution.update(catalogs_institution_params)
      flash[:success] = t('notices.updated_successfully')
      index
    end
  end

  # DELETE /catalogs/institutions/1
  # DELETE /catalogs/institutions/1.json
  def destroy

    autorize! :destroy, @catalogs_institution

    @catalogs_institution.destroy
    index
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalogs_institution
      @catalogs_institution = Catalogs::Institution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalogs_institution_params
      params.require(:catalogs_institution).permit(:abbr, :name)
    end

    def sort_column
      params[:sort] || 'name'
    end

    def sort_direction
      params[:direction] || 'asc'
    end

end
