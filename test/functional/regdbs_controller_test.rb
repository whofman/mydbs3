require 'test_helper'

class RegdbsControllerTest < ActionController::TestCase
  setup do
    @regdb = regdbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regdbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create regdb" do
    assert_difference('Regdb.count') do
      post :create, :regdb => @regdb.attributes
    end

    assert_redirected_to regdb_path(assigns(:regdb))
  end

  test "should show regdb" do
    get :show, :id => @regdb.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @regdb.to_param
    assert_response :success
  end

  test "should update regdb" do
    put :update, :id => @regdb.to_param, :regdb => @regdb.attributes
    assert_redirected_to regdb_path(assigns(:regdb))
  end

  test "should destroy regdb" do
    assert_difference('Regdb.count', -1) do
      delete :destroy, :id => @regdb.to_param
    end

    assert_redirected_to regdbs_path
  end
end
