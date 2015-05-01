class Catalogs::DepartmentsController < ApplicationController
  before_action :set_catalogs_department, only: [:show, :edit, :update, :destroy, :delete]
  helper_method :sort_column, :sort_direction

  # GET /catalogs/departments
  # GET /catalogs/departments.json
  def index
    @catalogs_departments = Catalogs::Department.search(params[:search]).order("#{sort_column} #{sort_direction}").paginate(per_page: 15, page:  params[:page])
  end

  # GET /catalogs/departments/1
  # GET /catalogs/departments/1.json
  def show
  end

  # GET /catalogs/departments/new
  def new
    @catalogs_department = Catalogs::Department.new
  end

  # GET /catalogs/departments/1/edit
  def edit
  end

  # POST /catalogs/departments
  # POST /catalogs/departments.json
  def create
    @catalogs_department = Catalogs::Department.new(catalogs_department_params)
    authorize! :create, @catalogs_department

    if @catalogs_department.save
      flash[:success] = t('notices.saved_successfully')
      index
    end
  end

  # PATCH/PUT /catalogs/departments/1
  # PATCH/PUT /catalogs/departments/1.json
  def update

    if @catalogs_department.update(catalogs_department_params)
      flash[:success] = t('notices.updated_successfully')
      index
    end
  end

  # DELETE /catalogs/departments/1
  # DELETE /catalogs/departments/1.json
  def destroy
    @catalogs_department.destroy
    index
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalogs_department
      @catalogs_department = Catalogs::Department.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalogs_department_params
      params.require(:catalogs_department).permit(:abbr, :name, :img_header, :institution_id)
    end

  def sort_column
    params[:sort] || 'name'
  end

  def sort_direction
    params[:direction] || 'asc'
  end
end
