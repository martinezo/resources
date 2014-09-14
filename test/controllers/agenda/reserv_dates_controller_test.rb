require 'test_helper'

class Agenda::ReservDatesControllerTest < ActionController::TestCase
  setup do
    @agenda_reserv_date = agenda_reserv_dates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agenda_reserv_dates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agenda_reserv_date" do
    assert_difference('Agenda::ReservDate.count') do
      post :create, agenda_reserv_date: { end_date_hour: @agenda_reserv_date.end_date_hour, reservation_id: @agenda_reserv_date.reservation_id, start_date_hour: @agenda_reserv_date.start_date_hour }
    end

    assert_redirected_to agenda_reserv_date_path(assigns(:agenda_reserv_date))
  end

  test "should show agenda_reserv_date" do
    get :show, id: @agenda_reserv_date
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agenda_reserv_date
    assert_response :success
  end

  test "should update agenda_reserv_date" do
    patch :update, id: @agenda_reserv_date, agenda_reserv_date: { end_date_hour: @agenda_reserv_date.end_date_hour, reservation_id: @agenda_reserv_date.reservation_id, start_date_hour: @agenda_reserv_date.start_date_hour }
    assert_redirected_to agenda_reserv_date_path(assigns(:agenda_reserv_date))
  end

  test "should destroy agenda_reserv_date" do
    assert_difference('Agenda::ReservDate.count', -1) do
      delete :destroy, id: @agenda_reserv_date
    end

    assert_redirected_to agenda_reserv_dates_path
  end
end
