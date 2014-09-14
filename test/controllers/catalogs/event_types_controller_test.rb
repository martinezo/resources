require 'test_helper'

class Catalogs::EventTypesControllerTest < ActionController::TestCase
  setup do
    @catalogs_event_type = catalogs_event_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:catalogs_event_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catalogs_event_type" do
    assert_difference('Catalogs::EventType.count') do
      post :create, catalogs_event_type: { name: @catalogs_event_type.name }
    end

    assert_redirected_to catalogs_event_type_path(assigns(:catalogs_event_type))
  end

  test "should show catalogs_event_type" do
    get :show, id: @catalogs_event_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @catalogs_event_type
    assert_response :success
  end

  test "should update catalogs_event_type" do
    patch :update, id: @catalogs_event_type, catalogs_event_type: { name: @catalogs_event_type.name }
    assert_redirected_to catalogs_event_type_path(assigns(:catalogs_event_type))
  end

  test "should destroy catalogs_event_type" do
    assert_difference('Catalogs::EventType.count', -1) do
      delete :destroy, id: @catalogs_event_type
    end

    assert_redirected_to catalogs_event_types_path
  end
end
