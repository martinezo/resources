class Admin::DeptConfigsController < ApplicationController
  before_action :set_admin_dept_config, only: [:edit, :update]

  # GET /admin/dept_configs/1/edit
  def edit
  end


  # PATCH/PUT /admin/dept_configs/1
  # PATCH/PUT /admin/dept_configs/1.json
  def update
    params[:dept_configs].each do |config|
      authorize! :update, Admin::DeptConfig.find(config[0])
      @admin_dept_config.update(config[0], value: config[1])
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_dept_config
      @admin_dept_config = Admin::DeptConfig.where(department_id: params[:department_id]).order(:precedence)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_dept_config_params
      params.require(:admin_dept_config).permit(:label, :value)
    end
end
