require 'test_helper'

class Agenda::ReservationsControllerTest < ActionController::TestCase
  setup do
    @agenda_reservation = agenda_reservations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agenda_reservations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agenda_reservation" do
    assert_difference('Agenda::Reservation.count') do
      post :create, agenda_reservation: { comments: @agenda_reservation.comments, email: @agenda_reservation.email, event_type_id: @agenda_reservation.event_type_id, folio: @agenda_reservation.folio, foreing_headquarter_id: @agenda_reservation.foreing_headquarter_id, modified_by: @agenda_reservation.modified_by, phone: @agenda_reservation.phone, requester: @agenda_reservation.requester, status_id: @agenda_reservation.status_id }
    end

    assert_redirected_to agenda_reservation_path(assigns(:agenda_reservation))
  end

  test "should show agenda_reservation" do
    get :show, id: @agenda_reservation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agenda_reservation
    assert_response :success
  end

  test "should update agenda_reservation" do
    patch :update, id: @agenda_reservation, agenda_reservation: { comments: @agenda_reservation.comments, email: @agenda_reservation.email, event_type_id: @agenda_reservation.event_type_id, folio: @agenda_reservation.folio, foreing_headquarter_id: @agenda_reservation.foreing_headquarter_id, modified_by: @agenda_reservation.modified_by, phone: @agenda_reservation.phone, requester: @agenda_reservation.requester, status_id: @agenda_reservation.status_id }
    assert_redirected_to agenda_reservation_path(assigns(:agenda_reservation))
  end

  test "should destroy agenda_reservation" do
    assert_difference('Agenda::Reservation.count', -1) do
      delete :destroy, id: @agenda_reservation
    end

    assert_redirected_to agenda_reservations_path
  end
end
