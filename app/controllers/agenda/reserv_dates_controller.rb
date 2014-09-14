class Agenda::ReservDatesController < ApplicationController
  before_action :set_agenda_reserv_date, only: [:show, :edit, :update, :destroy]

  # GET /agenda/reserv_dates
  # GET /agenda/reserv_dates.json
  def index
    @agenda_reserv_dates = Agenda::ReservDate.all
  end

  # GET /agenda/reserv_dates/1
  # GET /agenda/reserv_dates/1.json
  def show
  end

  # GET /agenda/reserv_dates/new
  def new
    @agenda_reserv_date = Agenda::ReservDate.new
  end

  # GET /agenda/reserv_dates/1/edit
  def edit
  end

  # POST /agenda/reserv_dates
  # POST /agenda/reserv_dates.json
  def create
    @agenda_reserv_date = Agenda::ReservDate.new(agenda_reserv_date_params)

    respond_to do |format|
      if @agenda_reserv_date.save
        format.html { redirect_to @agenda_reserv_date, notice: 'Reserv date was successfully created.' }
        format.json { render :show, status: :created, location: @agenda_reserv_date }
      else
        format.html { render :new }
        format.json { render json: @agenda_reserv_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agenda/reserv_dates/1
  # PATCH/PUT /agenda/reserv_dates/1.json
  def update
    respond_to do |format|
      if @agenda_reserv_date.update(agenda_reserv_date_params)
        format.html { redirect_to @agenda_reserv_date, notice: 'Reserv date was successfully updated.' }
        format.json { render :show, status: :ok, location: @agenda_reserv_date }
      else
        format.html { render :edit }
        format.json { render json: @agenda_reserv_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agenda/reserv_dates/1
  # DELETE /agenda/reserv_dates/1.json
  def destroy
    @agenda_reserv_date.destroy
    respond_to do |format|
      format.html { redirect_to agenda_reserv_dates_url, notice: 'Reserv date was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agenda_reserv_date
      @agenda_reserv_date = Agenda::ReservDate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agenda_reserv_date_params
      params.require(:agenda_reserv_date).permit(:reservation_id, :start_date_hour, :end_date_hour)
    end
end
