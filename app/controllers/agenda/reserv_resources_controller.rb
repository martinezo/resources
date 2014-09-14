class Agenda::ReservResourcesController < ApplicationController
  before_action :set_agenda_reserv_resource, only: [:show, :edit, :update, :destroy]

  # GET /agenda/reserv_resources
  # GET /agenda/reserv_resources.json
  def index
    @agenda_reserv_resources = Agenda::ReservResource.all
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

    respond_to do |format|
      if @agenda_reserv_resource.save
        format.html { redirect_to @agenda_reserv_resource, notice: 'Reserv resource was successfully created.' }
        format.json { render :show, status: :created, location: @agenda_reserv_resource }
      else
        format.html { render :new }
        format.json { render json: @agenda_reserv_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agenda/reserv_resources/1
  # PATCH/PUT /agenda/reserv_resources/1.json
  def update
    respond_to do |format|
      if @agenda_reserv_resource.update(agenda_reserv_resource_params)
        format.html { redirect_to @agenda_reserv_resource, notice: 'Reserv resource was successfully updated.' }
        format.json { render :show, status: :ok, location: @agenda_reserv_resource }
      else
        format.html { render :edit }
        format.json { render json: @agenda_reserv_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agenda/reserv_resources/1
  # DELETE /agenda/reserv_resources/1.json
  def destroy
    @agenda_reserv_resource.destroy
    respond_to do |format|
      format.html { redirect_to agenda_reserv_resources_url, notice: 'Reserv resource was successfully destroyed.' }
      format.json { head :no_content }
    end
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
end
