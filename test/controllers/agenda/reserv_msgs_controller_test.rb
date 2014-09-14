require 'test_helper'

class Agenda::ReservMsgsControllerTest < ActionController::TestCase
  setup do
    @agenda_reserv_msg = agenda_reserv_msgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agenda_reserv_msgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agenda_reserv_msg" do
    assert_difference('Agenda::ReservMsg.count') do
      post :create, agenda_reserv_msg: { message: @agenda_reserv_msg.message, reservation_id: @agenda_reserv_msg.reservation_id }
    end

    assert_redirected_to agenda_reserv_msg_path(assigns(:agenda_reserv_msg))
  end

  test "should show agenda_reserv_msg" do
    get :show, id: @agenda_reserv_msg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agenda_reserv_msg
    assert_response :success
  end

  test "should update agenda_reserv_msg" do
    patch :update, id: @agenda_reserv_msg, agenda_reserv_msg: { message: @agenda_reserv_msg.message, reservation_id: @agenda_reserv_msg.reservation_id }
    assert_redirected_to agenda_reserv_msg_path(assigns(:agenda_reserv_msg))
  end

  test "should destroy agenda_reserv_msg" do
    assert_difference('Agenda::ReservMsg.count', -1) do
      delete :destroy, id: @agenda_reserv_msg
    end

    assert_redirected_to agenda_reserv_msgs_path
  end
end
