class Agenda::ReservationsController < ApplicationController
  before_action :set_agenda_reservation, only: [:show, :edit, :update, :destroy, :delete]
  helper_method :sort_column, :sort_direction



  # GET /agenda/reservations
  # GET /agenda/reservations.json
  def index
    @agenda_reservations = Agenda::Reservation.search(params[:search]).order("#{sort_column} #{sort_direction}").paginate(per_page: 15, page:  params[:page])
  end

  # GET /agenda/reservations/1
  # GET /agenda/reservations/1.json
  def show
  end

  # GET /agenda/reservations/new
  def new
    @agenda_reservation = Agenda::Reservation.new
  end

  # GET /agenda/reservations/1/edit
  def edit
  end

  # POST /agenda/reservations
  # POST /agenda/reservations.json
  def create
    @agenda_reservation = Agenda::Reservation.new(agenda_reservation_params)
    if @agenda_reservation.save
      flash[:success] = t('notices.saved_successfully')
      index
    end
  end

  # PATCH/PUT /agenda/reservations/1
  # PATCH/PUT /agenda/reservations/1.json
  def update
    if @agenda_reservation.update(agenda_reservation_params)
      flash[:success] = t('notices.updated_successfully')
      index
    end
  end

  # DELETE /agenda/reservations/1
  # DELETE /agenda/reservations/1.json
  def destroy
    @agenda_reservation.destroy
    index
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agenda_reservation
      @agenda_reservation = Agenda::Reservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agenda_reservation_params
      params.require(:agenda_reservation).permit(:folio, :requester, :email, :phone, :foreing_headquarter_id, :event_type_id, :status_id, :comments, :modified_by)
    end

    def sort_column
      params[:sort] || 'folio'
    end

    def sort_direction
      params[:direction] || 'asc'
    end

end
