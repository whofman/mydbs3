require 'test_helper'

class AdresdbsControllerTest < ActionController::TestCase
  setup do
    @adresdb = adresdbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adresdbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adresdb" do
    assert_difference('Adresdb.count') do
      post :create, :adresdb => @adresdb.attributes
    end

    assert_redirected_to adresdb_path(assigns(:adresdb))
  end

  test "should show adresdb" do
    get :show, :id => @adresdb.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @adresdb.to_param
    assert_response :success
  end

  test "should update adresdb" do
    put :update, :id => @adresdb.to_param, :adresdb => @adresdb.attributes
    assert_redirected_to adresdb_path(assigns(:adresdb))
  end

  test "should destroy adresdb" do
    assert_difference('Adresdb.count', -1) do
      delete :destroy, :id => @adresdb.to_param
    end

    assert_redirected_to adresdbs_path
  end
end
