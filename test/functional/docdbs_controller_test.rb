require 'test_helper'

class DocdbsControllerTest < ActionController::TestCase
  setup do
    @docdb = docdbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:docdbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create docdb" do
    assert_difference('Docdb.count') do
      post :create, :docdb => @docdb.attributes
    end

    assert_redirected_to docdb_path(assigns(:docdb))
  end

  test "should show docdb" do
    get :show, :id => @docdb.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @docdb.to_param
    assert_response :success
  end

  test "should update docdb" do
    put :update, :id => @docdb.to_param, :docdb => @docdb.attributes
    assert_redirected_to docdb_path(assigns(:docdb))
  end

  test "should destroy docdb" do
    assert_difference('Docdb.count', -1) do
      delete :destroy, :id => @docdb.to_param
    end

    assert_redirected_to docdbs_path
  end
end
