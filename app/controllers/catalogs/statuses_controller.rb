class Catalogs::StatusesController < ApplicationController
  before_action :set_catalogs_status, only: [:show, :edit, :update, :destroy, :delete]
  helper_method :sort_column, :sort_direction

  # GET /catalogs/statuses
  # GET /catalogs/statuses.json
  def index
    @catalogs_statuses = Catalogs::Status.all
  end

  # GET /catalogs/statuses/1
  # GET /catalogs/statuses/1.json
  def show
  end

  # GET /catalogs/statuses/new
  def new
    @catalogs_status = Catalogs::Status.new
  end

  # GET /catalogs/statuses/1/edit
  def edit
  end

  # POST /catalogs/statuses
  # POST /catalogs/statuses.json
  def create
    @catalogs_status = Catalogs::Status.new(catalogs_status_params)
    if @catalogs_status.save
      flash[:success] = t('notices.saved_successfully')
      index
    end
  end

  # PATCH/PUT /catalogs/statuses/1
  # PATCH/PUT /catalogs/statuses/1.json
  def update
    if @catalogs_status.update(catalogs_status_params)
      flash[:success] = t('notices.updated_successfully')
      index
    end
  end

  # DELETE /catalogs/statuses/1
  # DELETE /catalogs/statuses/1.json
  def destroy
    @catalogs_status.destroy
    index
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalogs_status
      @catalogs_status = Catalogs::Status.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalogs_status_params
      params.require(:catalogs_status).permit(:name)
    end

  def sort_column
    params[:sort] || 'name'
  end

  def sort_direction
    params[:direction] || 'asc'
  end
end
