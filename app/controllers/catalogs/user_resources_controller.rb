class Catalogs::UserResourcesController < ApplicationController
  before_action :set_catalogs_user_resource, only: [:show, :edit, :update, :destroy]

  # GET /catalogs/user_resources
  # GET /catalogs/user_resources.json
  def index
    @catalogs_user_resources = Catalogs::UserResource.all
  end

  # GET /catalogs/user_resources/1
  # GET /catalogs/user_resources/1.json
  def show
  end

  # GET /catalogs/user_resources/new
  def new
    @catalogs_user_resource = Catalogs::UserResource.new
  end

  # GET /catalogs/user_resources/1/edit
  def edit
  end

  # POST /catalogs/user_resources
  # POST /catalogs/user_resources.json
  def create
    @catalogs_user_resource = Catalogs::UserResource.new(catalogs_user_resource_params)

    respond_to do |format|
      if @catalogs_user_resource.save
        format.html { redirect_to @catalogs_user_resource, notice: 'User resource was successfully created.' }
        format.json { render :show, status: :created, location: @catalogs_user_resource }
      else
        format.html { render :new }
        format.json { render json: @catalogs_user_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catalogs/user_resources/1
  # PATCH/PUT /catalogs/user_resources/1.json
  def update
    respond_to do |format|
      if @catalogs_user_resource.update(catalogs_user_resource_params)
        format.html { redirect_to @catalogs_user_resource, notice: 'User resource was successfully updated.' }
        format.json { render :show, status: :ok, location: @catalogs_user_resource }
      else
        format.html { render :edit }
        format.json { render json: @catalogs_user_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalogs/user_resources/1
  # DELETE /catalogs/user_resources/1.json
  def destroy
    @catalogs_user_resource.destroy
    respond_to do |format|
      format.html { redirect_to catalogs_user_resources_url, notice: 'User resource was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalogs_user_resource
      @catalogs_user_resource = Catalogs::UserResource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalogs_user_resource_params
      params.require(:catalogs_user_resource).permit(:admin_user_id, :resource_id, :administrator)
    end
end
