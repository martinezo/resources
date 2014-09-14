require 'test_helper'

class Agenda::ReservResourcesControllerTest < ActionController::TestCase
  setup do
    @agenda_reserv_resource = agenda_reserv_resources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agenda_reserv_resources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agenda_reserv_resource" do
    assert_difference('Agenda::ReservResource.count') do
      post :create, agenda_reserv_resource: { reservation_id: @agenda_reserv_resource.reservation_id, resource_id: @agenda_reserv_resource.resource_id }
    end

    assert_redirected_to agenda_reserv_resource_path(assigns(:agenda_reserv_resource))
  end

  test "should show agenda_reserv_resource" do
    get :show, id: @agenda_reserv_resource
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agenda_reserv_resource
    assert_response :success
  end

  test "should update agenda_reserv_resource" do
    patch :update, id: @agenda_reserv_resource, agenda_reserv_resource: { reservation_id: @agenda_reserv_resource.reservation_id, resource_id: @agenda_reserv_resource.resource_id }
    assert_redirected_to agenda_reserv_resource_path(assigns(:agenda_reserv_resource))
  end

  test "should destroy agenda_reserv_resource" do
    assert_difference('Agenda::ReservResource.count', -1) do
      delete :destroy, id: @agenda_reserv_resource
    end

    assert_redirected_to agenda_reserv_resources_path
  end
end
