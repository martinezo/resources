class Catalogs::ResourceTypesController < ApplicationController
  before_action :set_catalogs_resource_type, only: [:show, :edit, :update, :destroy]

  # GET /catalogs/resource_types
  # GET /catalogs/resource_types.json
  def index
    @catalogs_resource_types = Catalogs::ResourceType.all
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

    respond_to do |format|
      if @catalogs_resource_type.save
        format.html { redirect_to @catalogs_resource_type, notice: 'Resource type was successfully created.' }
        format.json { render :show, status: :created, location: @catalogs_resource_type }
      else
        format.html { render :new }
        format.json { render json: @catalogs_resource_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catalogs/resource_types/1
  # PATCH/PUT /catalogs/resource_types/1.json
  def update
    respond_to do |format|
      if @catalogs_resource_type.update(catalogs_resource_type_params)
        format.html { redirect_to @catalogs_resource_type, notice: 'Resource type was successfully updated.' }
        format.json { render :show, status: :ok, location: @catalogs_resource_type }
      else
        format.html { render :edit }
        format.json { render json: @catalogs_resource_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalogs/resource_types/1
  # DELETE /catalogs/resource_types/1.json
  def destroy
    @catalogs_resource_type.destroy
    respond_to do |format|
      format.html { redirect_to catalogs_resource_types_url, notice: 'Resource type was successfully destroyed.' }
      format.json { head :no_content }
    end
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
end
