class Agenda::ReservationsController < ApplicationController
  skip_before_filter :authenticate_devise_user!, only: [:public_new, :public_index, :public_create, :public_show ]

  before_action :set_agenda_reservation, only: [:show, :edit, :update, :destroy, :delete, :public_show, :delegate, :set_as_delegated, :confirm, :set_as_confirmed, :conclude, :set_as_concluded]
  helper_method :sort_column, :sort_direction

  # Public interface
  def public_index
    @reservations = Agenda::Reservation.where(department_id: params[:department_id]).public_search(params[:search]).order("#{sort_column} #{sort_direction}").paginate(per_page: 15, page:  params[:page])
  end

  def public_new
    @reservation = Agenda::Reservation.new
    #TODO REMOVE THIS LINE @dept_config = Admin::DeptConfig.where(department_id: params[:department_id])
  end

  def public_create
    @reservation = Agenda::Reservation.new(agenda_reservation_params)
    @reservation.department_id = params[:department_id]
    if @reservation.save
      flash[:success] = t('notices.saved_successfully')
      flash[:info] = "<strong> Folio: #{@reservation.folio} </strong>"
      public_index
    end
  end

  def public_show
  end

  # GET /agenda/reservations
  # GET /agenda/reservations.json
  def index
    if current_user.user_type_id == 1 #SUPER USER
      @reservations = Agenda::Reservation.search(params[:search]).order("#{sort_column} #{sort_direction}").paginate(per_page: 15, page:  params[:page])
    else
      @reservations = Agenda::Reservation.my_department(current_user.department_id).search(params[:search]).order("#{sort_column} #{sort_direction}").paginate(per_page: 15, page:  params[:page])
    end
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
    puts 'xxxxx'
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
      #index
      redirect_to agenda_reservations_path(page: params[:page])
    end
  end

  # DELETE /agenda/reservations/1
  # DELETE /agenda/reservations/1.json
  def destroy
    @agenda_reservation.destroy
    index
  end


  def delegate
  end

  def set_as_delegated
    @agenda_reservation.status_id = 2
    @agenda_reservation.action = action_name #For valitation
    if @agenda_reservation.update(agenda_reservation_params)
      flash[:success] = t('notices.request_successfully_delegated', admin_user_name: @agenda_reservation.admin_user.name)
    end
  end

  def confirm
  end

  def set_as_confirmed
    @agenda_reservation.status_id = 3
    @agenda_reservation.action = action_name #For valitation
    if @agenda_reservation.update(agenda_reservation_params)
      flash[:success] = t('notices.request_successfully_confirmed')
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agenda_reservation
      @agenda_reservation = Agenda::Reservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agenda_reservation_params
      params.require(:agenda_reservation).permit(:folio, :requester, :email, :phone, :local_headquarter_id, :foreign_headquarter_id, :event_type_id, :status_id, :resource_requested, :department_id, :modified_by, :admin_user_id, :txt_op_1, :txt_op_2, :txt_op_3, :txt_op_4)
    end

    def sort_column
      params[:sort] || 'folio'
    end

    def sort_direction
      params[:direction] || 'desc'
    end

end
