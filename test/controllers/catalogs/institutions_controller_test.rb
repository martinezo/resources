require 'test_helper'

class Catalogs::InstitutionsControllerTest < ActionController::TestCase
  setup do
    @catalogs_institution = catalogs_institutions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:catalogs_institutions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catalogs_institution" do
    assert_difference('Catalogs::Institution.count') do
      post :create, catalogs_institution: { abbr: @catalogs_institution.abbr, name: @catalogs_institution.name }
    end

    assert_redirected_to catalogs_institution_path(assigns(:catalogs_institution))
  end

  test "should show catalogs_institution" do
    get :show, id: @catalogs_institution
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @catalogs_institution
    assert_response :success
  end

  test "should update catalogs_institution" do
    patch :update, id: @catalogs_institution, catalogs_institution: { abbr: @catalogs_institution.abbr, name: @catalogs_institution.name }
    assert_redirected_to catalogs_institution_path(assigns(:catalogs_institution))
  end

  test "should destroy catalogs_institution" do
    assert_difference('Catalogs::Institution.count', -1) do
      delete :destroy, id: @catalogs_institution
    end

    assert_redirected_to catalogs_institutions_path
  end
end
