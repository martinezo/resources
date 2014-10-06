class Agenda::ReservResourcesController < ApplicationController
  before_action :set_agenda_reserv_resource, only: [:show, :edit, :update, :destroy, :delete]

  # GET /agenda/reserv_resources
  # GET /agenda/reserv_resources.json
  def index
    #@agenda_reserv_resources = Agenda::ReservResource.all
    @agenda_reserv_resources = Agenda::ReservResource.search(params[:search]).order("#{sort_column} #{sort_direction}").paginate(per_page: 15, page:  params[:page])
  end

  # GET /agenda/reserv_resources/1
  # GET /agenda/reserv_resources/1.json
  def show
  end

  # GET /agenda/reserv_resources/new
  def new
    @agenda_reserv_resource = Agenda::ReservResource.new
  end

  # GET /agenda/reserv_resources/1/edit
  def edit
  end

  # POST /agenda/reserv_resources
  # POST /agenda/reserv_resources.json
  def create
    @agenda_reserv_resource = Agenda::ReservResource.new(agenda_reserv_resource_params)
    if @agenda_reserv_resource.save
      flash[:success] = t('notices.saved_successfully')
      index
    end

  end

  # PATCH/PUT /agenda/reserv_resources/1
  # PATCH/PUT /agenda/reserv_resources/1.json
  def update
    if @agenda_reserv_resource.update(agenda_reserv_resource_params)
      flash[:success] = t('notices.updated_successfully')
      index
    end
  end

  # DELETE /agenda/reserv_resources/1
  # DELETE /agenda/reserv_resources/1.json
  def destroy
    @agenda_reserv_resource.destroy
    index
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agenda_reserv_resource
      @agenda_reserv_resource = Agenda::ReservResource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agenda_reserv_resource_params
      params.require(:agenda_reserv_resource).permit(:reservation_id, :resource_id)
    end

    def sort_column
      params[:sort] || 'name'
    end

    def sort_direction
      params[:direction] || 'asc'
    end
end
