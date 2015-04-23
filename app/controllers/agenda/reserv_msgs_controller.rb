class Agenda::ReservMsgsController < ApplicationController
  skip_before_filter :authenticate_devise_user!, only: [:public_new_msg, :public_create_msg, :public_cancel_msg, :public_cancel_req_msg]

  before_action :set_agenda_reserv_msg, only: [:show, :edit, :update, :destroy]

  # Public interface
  def public_new_msg
    @reserv_msg = Agenda::ReservMsg.new
    @reserv_msg.reservation_id = params[:reservation_id]
  end

  def public_create_msg
    @reserv_msg = Agenda::ReservMsg.new(agenda_reserv_msg_params)
    @reserv_msg.user_id = 0
    if @reserv_msg.save
      flash[:success] = t('notices.message_saved_successfully')
    end
  end

  def public_cancel_req_msg
    @reserv_msg = Agenda::ReservMsg.new
    @reserv_msg.reservation_id = params[:reservation_id]
  end

  def public_cancel_msg
    @reserv_msg = Agenda::ReservMsg.new(agenda_reserv_msg_params)
    @reserv_msg.user_id = 0
    @reserv_msg.message = @reserv_msg.message.prepend("[ #{t('msgs.canceled_reservation')} ]")
    if @reserv_msg.save
      flash[:alert] = t('notices.reserv_canceled')
      @reserv_msg.reservation.update_attribute(:status_id, 0)
      @reservation = Agenda::Reservation.find(@reserv_msg.reservation_id)
    end
  end

  # GET /agenda/reserv_msgs
  # GET /agenda/reserv_msgs.json
  def index
    @agenda_reserv_msgs = Agenda::ReservMsg.all
  end

  # GET /agenda/reserv_msgs/1
  # GET /agenda/reserv_msgs/1.json
  def show
  end

  # GET /agenda/reserv_msgs/new
  def new
    @reserv_msg = Agenda::ReservMsg.new
    @reserv_msg.reservation_id = params[:reservation_id]
  end

  # GET /agenda/reserv_msgs/1/edit
  def edit
  end

  # POST /agenda/reserv_msgs
  # POST /agenda/reserv_msgs.json
  def create
    @reserv_msg = Agenda::ReservMsg.new(agenda_reserv_msg_params)

    #cancan
    authorize! :create, @reserv_msg, :message => t('notices.not_authorized')

    @reserv_msg.user_id = current_devise_user.id
    @reserv_msg.folio = @reserv_msg.reservation.folio
    if @reserv_msg.save
      flash[:success] = t('notices.message_saved_successfully')
    end
    # @agenda_reserv_msg = Agenda::ReservMsg.new(agenda_reserv_msg_params)

    # respond_to do |format|
    #   if @agenda_reserv_msg.save
    #     format.html { redirect_to @agenda_reserv_msg, notice: 'Reserv msg was successfully created.' }
    #     format.json { render :show, status: :created, location: @agenda_reserv_msg }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @agenda_reserv_msg.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /agenda/reserv_msgs/1
  # PATCH/PUT /agenda/reserv_msgs/1.json
  def update
    respond_to do |format|
      if @agenda_reserv_msg.update(agenda_reserv_msg_params)
        format.html { redirect_to @agenda_reserv_msg, notice: 'Reserv msg was successfully updated.' }
        format.json { render :show, status: :ok, location: @agenda_reserv_msg }
      else
        format.html { render :edit }
        format.json { render json: @agenda_reserv_msg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agenda/reserv_msgs/1
  # DELETE /agenda/reserv_msgs/1.json
  def destroy
    @agenda_reserv_msg.destroy
    respond_to do |format|
      format.html { redirect_to agenda_reserv_msgs_url, notice: 'Reserv msg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agenda_reserv_msg
      @agenda_reserv_msg = Agenda::ReservMsg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agenda_reserv_msg_params
      params.require(:agenda_reserv_msg).permit(:reservation_id, :message, :user_id, :folio)
    end
end
