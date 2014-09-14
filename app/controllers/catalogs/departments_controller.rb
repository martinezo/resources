class Catalogs::DepartmentsController < ApplicationController
  before_action :set_catalogs_department, only: [:show, :edit, :update, :destroy]

  # GET /catalogs/departments
  # GET /catalogs/departments.json
  def index
    @catalogs_departments = Catalogs::Department.all
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

    respond_to do |format|
      if @catalogs_department.save
        format.html { redirect_to @catalogs_department, notice: 'Department was successfully created.' }
        format.json { render :show, status: :created, location: @catalogs_department }
      else
        format.html { render :new }
        format.json { render json: @catalogs_department.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catalogs/departments/1
  # PATCH/PUT /catalogs/departments/1.json
  def update
    respond_to do |format|
      if @catalogs_department.update(catalogs_department_params)
        format.html { redirect_to @catalogs_department, notice: 'Department was successfully updated.' }
        format.json { render :show, status: :ok, location: @catalogs_department }
      else
        format.html { render :edit }
        format.json { render json: @catalogs_department.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalogs/departments/1
  # DELETE /catalogs/departments/1.json
  def destroy
    @catalogs_department.destroy
    respond_to do |format|
      format.html { redirect_to catalogs_departments_url, notice: 'Department was successfully destroyed.' }
      format.json { head :no_content }
    end
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
end
