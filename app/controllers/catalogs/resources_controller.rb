class Catalogs::ResourcesController < ApplicationController
  before_action :set_catalogs_resource, only: [:show, :edit, :update, :destroy]

  # GET /catalogs/resources
  # GET /catalogs/resources.json
  def index
    @catalogs_resources = Catalogs::Resource.all
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

    respond_to do |format|
      if @catalogs_resource.save
        format.html { redirect_to @catalogs_resource, notice: 'Resource was successfully created.' }
        format.json { render :show, status: :created, location: @catalogs_resource }
      else
        format.html { render :new }
        format.json { render json: @catalogs_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catalogs/resources/1
  # PATCH/PUT /catalogs/resources/1.json
  def update
    respond_to do |format|
      if @catalogs_resource.update(catalogs_resource_params)
        format.html { redirect_to @catalogs_resource, notice: 'Resource was successfully updated.' }
        format.json { render :show, status: :ok, location: @catalogs_resource }
      else
        format.html { render :edit }
        format.json { render json: @catalogs_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalogs/resources/1
  # DELETE /catalogs/resources/1.json
  def destroy
    @catalogs_resource.destroy
    respond_to do |format|
      format.html { redirect_to catalogs_resources_url, notice: 'Resource was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalogs_resource
      @catalogs_resource = Catalogs::Resource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalogs_resource_params
      params.require(:catalogs_resource).permit(:abbr, :name, :resource_type_id, :description, :ubication, :active, :admin_user_id, :unique)
    end
end
