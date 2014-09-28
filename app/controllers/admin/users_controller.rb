class Admin::UsersController < ApplicationController
  before_action :set_admin_user, only: [:show, :edit, :update, :delete, :destroy]
  helper_method :sort_column, :sort_direction

  # GET /admin/users
  # GET /admin/users.json
  def index
    @admin_users = Admin::User.search(params[:search]).order("#{sort_column} #{sort_direction}").paginate(per_page: 8, page:  params[:page])
  end

  # GET /admin/users/1
  # GET /admin/users/1.json
  def show
  end

  # GET /admin/users/new
  def new
    @admin_user = Admin::User.new
  end

  # GET /admin/users/1/edit
  def edit
  end

  # POST /admin/users
  # POST /admin/users.json
  def create
    @admin_user = Admin::User.new(admin_user_params)

    if @admin_user.save
      flash[:success] = t('notices.saved_successfully')
      index
    end
  end

  # PATCH/PUT /admin/users/1
  # PATCH/PUT /admin/users/1.json
  def update
    if @admin_user.update(admin_user_params)
      flash[:success] = t('notices.updated_successfully')
      index
    end
  end

  def delete

  end

  # DELETE /admin/users/1
  # DELETE /admin/users/1.json
  def destroy
    @admin_user.destroy
    index
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_user
      @admin_user = Admin::User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_user_params
      params.require(:admin_user).permit(:login, :name, :mail, :department_id, :user_type_id)
    end

    def sort_column
      params[:sort] || 'name'
    end

    def sort_direction
      params[:direction] || 'asc'
    end
end
