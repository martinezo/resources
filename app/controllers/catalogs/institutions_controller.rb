class Catalogs::InstitutionsController < ApplicationController
  before_action :set_catalogs_institution, only: [:show, :edit, :update, :destroy]

  # GET /catalogs/institutions
  # GET /catalogs/institutions.json
  def index
    @catalogs_institutions = Catalogs::Institution.all
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

    respond_to do |format|
      if @catalogs_institution.save
        format.html { redirect_to @catalogs_institution, notice: 'Institution was successfully created.' }
        format.json { render :show, status: :created, location: @catalogs_institution }
      else
        format.html { render :new }
        format.json { render json: @catalogs_institution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catalogs/institutions/1
  # PATCH/PUT /catalogs/institutions/1.json
  def update
    respond_to do |format|
      if @catalogs_institution.update(catalogs_institution_params)
        format.html { redirect_to @catalogs_institution, notice: 'Institution was successfully updated.' }
        format.json { render :show, status: :ok, location: @catalogs_institution }
      else
        format.html { render :edit }
        format.json { render json: @catalogs_institution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalogs/institutions/1
  # DELETE /catalogs/institutions/1.json
  def destroy
    @catalogs_institution.destroy
    respond_to do |format|
      format.html { redirect_to catalogs_institutions_url, notice: 'Institution was successfully destroyed.' }
      format.json { head :no_content }
    end
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
end
