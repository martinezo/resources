class Catalogs::HeadquartersController < ApplicationController
  before_action :set_catalogs_headquarter, only: [:show, :edit, :update, :destroy]

  # GET /catalogs/headquarters
  # GET /catalogs/headquarters.json
  def index
    @catalogs_headquarters = Catalogs::Headquarter.all
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

    respond_to do |format|
      if @catalogs_headquarter.save
        format.html { redirect_to @catalogs_headquarter, notice: 'Headquarter was successfully created.' }
        format.json { render :show, status: :created, location: @catalogs_headquarter }
      else
        format.html { render :new }
        format.json { render json: @catalogs_headquarter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catalogs/headquarters/1
  # PATCH/PUT /catalogs/headquarters/1.json
  def update
    respond_to do |format|
      if @catalogs_headquarter.update(catalogs_headquarter_params)
        format.html { redirect_to @catalogs_headquarter, notice: 'Headquarter was successfully updated.' }
        format.json { render :show, status: :ok, location: @catalogs_headquarter }
      else
        format.html { render :edit }
        format.json { render json: @catalogs_headquarter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalogs/headquarters/1
  # DELETE /catalogs/headquarters/1.json
  def destroy
    @catalogs_headquarter.destroy
    respond_to do |format|
      format.html { redirect_to catalogs_headquarters_url, notice: 'Headquarter was successfully destroyed.' }
      format.json { head :no_content }
    end
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
end
