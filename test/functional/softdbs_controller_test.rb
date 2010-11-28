require 'test_helper'

class SoftdbsControllerTest < ActionController::TestCase
  setup do
    @softdb = softdbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:softdbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create softdb" do
    assert_difference('Softdb.count') do
      post :create, :softdb => @softdb.attributes
    end

    assert_redirected_to softdb_path(assigns(:softdb))
  end

  test "should show softdb" do
    get :show, :id => @softdb.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @softdb.to_param
    assert_response :success
  end

  test "should update softdb" do
    put :update, :id => @softdb.to_param, :softdb => @softdb.attributes
    assert_redirected_to softdb_path(assigns(:softdb))
  end

  test "should destroy softdb" do
    assert_difference('Softdb.count', -1) do
      delete :destroy, :id => @softdb.to_param
    end

    assert_redirected_to softdbs_path
  end
end
