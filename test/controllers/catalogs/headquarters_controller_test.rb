require 'test_helper'

class Catalogs::HeadquartersControllerTest < ActionController::TestCase
  setup do
    @catalogs_headquarter = catalogs_headquarters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:catalogs_headquarters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catalogs_headquarter" do
    assert_difference('Catalogs::Headquarter.count') do
      post :create, catalogs_headquarter: { comments: @catalogs_headquarter.comments, email: @catalogs_headquarter.email, intitution_id: @catalogs_headquarter.intitution_id, name: @catalogs_headquarter.name, phone: @catalogs_headquarter.phone, responsible: @catalogs_headquarter.responsible }
    end

    assert_redirected_to catalogs_headquarter_path(assigns(:catalogs_headquarter))
  end

  test "should show catalogs_headquarter" do
    get :show, id: @catalogs_headquarter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @catalogs_headquarter
    assert_response :success
  end

  test "should update catalogs_headquarter" do
    patch :update, id: @catalogs_headquarter, catalogs_headquarter: { comments: @catalogs_headquarter.comments, email: @catalogs_headquarter.email, intitution_id: @catalogs_headquarter.intitution_id, name: @catalogs_headquarter.name, phone: @catalogs_headquarter.phone, responsible: @catalogs_headquarter.responsible }
    assert_redirected_to catalogs_headquarter_path(assigns(:catalogs_headquarter))
  end

  test "should destroy catalogs_headquarter" do
    assert_difference('Catalogs::Headquarter.count', -1) do
      delete :destroy, id: @catalogs_headquarter
    end

    assert_redirected_to catalogs_headquarters_path
  end
end
