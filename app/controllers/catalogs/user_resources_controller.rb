class Catalogs::UserResourcesController < ApplicationController
  before_action :set_catalogs_user_resource, only: [:show, :edit, :update, :destroy, :delete]
  helper_method :sort_column, :sort_direction,:sort_column_resource

  # GET /catalogs/user_resources
  # GET /catalogs/user_resources.json
  def index
    @catalogs_user_resources = Catalogs::UserResource.search(params[:search]).order("#{sort_column} #{sort_direction}").paginate(per_page: 15, page:  params[:page])
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
    if @catalogs_user_resource.save
      flash[:success] = t('notices.saved_successfully')
      index
    end
  end

  # PATCH/PUT /catalogs/user_resources/1
  # PATCH/PUT /catalogs/user_resources/1.json
  def update
    if @catalogs_user_resource.update(catalogs_user_resource_params)
      flash[:success] = t('notices.updated_successfully')
      index
    end
  end

  # DELETE /catalogs/user_resources/1
  # DELETE /catalogs/user_resources/1.json
  def destroy
    @catalogs_user_resource.destroy
    index
  end

  def resource_assignment_to_user
    @user = Admin::User.find(params[:user_id])
    @catalogs_resources = Catalogs::Resource.search_resource(params[:search]).order("#{sort_column_resource} #{sort_direction}").paginate(per_page: 10, page:  params[:page])
  end

  def assign_unassign_users_resources
    if params[:admin] == 'true'
      Catalogs::UserResource.destroy_by_user_resource_id(params[:user_id],params[:resource_id])
    else
      Catalogs::UserResource.create(admin_user_id: params[:user_id], resource_id: params[:resource_id])
    end
  end

  def user_assignment_to_resource
    @resource = Catalogs::Resource.find(params[:resource_id])
    @admin_users = Admin::User.search_user(params[:search]).order("#{sort_column_resource} #{sort_direction}").paginate(per_page: 10, page:  params[:page])
  end

  def assign_unassign_resources_users
    if params[:admin] == 'true'
      Catalogs::UserResource.destroy_by_user_resource_id(params[:user_id],params[:resource_id])
    else
      Catalogs::UserResource.create(admin_user_id: params[:user_id], resource_id: params[:resource_id])
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

    def sort_column
      params[:sort] || 'administrator'
    end

    def sort_direction
      params[:direction] || 'asc'
    end


  def sort_column_resource
    params[:sort] || 'name'
  end



end
