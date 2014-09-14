class Agenda::ReservMsgsController < ApplicationController
  before_action :set_agenda_reserv_msg, only: [:show, :edit, :update, :destroy]

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
    @agenda_reserv_msg = Agenda::ReservMsg.new
  end

  # GET /agenda/reserv_msgs/1/edit
  def edit
  end

  # POST /agenda/reserv_msgs
  # POST /agenda/reserv_msgs.json
  def create
    @agenda_reserv_msg = Agenda::ReservMsg.new(agenda_reserv_msg_params)

    respond_to do |format|
      if @agenda_reserv_msg.save
        format.html { redirect_to @agenda_reserv_msg, notice: 'Reserv msg was successfully created.' }
        format.json { render :show, status: :created, location: @agenda_reserv_msg }
      else
        format.html { render :new }
        format.json { render json: @agenda_reserv_msg.errors, status: :unprocessable_entity }
      end
    end
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
      params.require(:agenda_reserv_msg).permit(:reservation_id, :message)
    end
end
