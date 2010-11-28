require 'test_helper'

class ArtdbsControllerTest < ActionController::TestCase
  setup do
    @artdb = artdbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artdbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artdb" do
    assert_difference('Artdb.count') do
      post :create, :artdb => @artdb.attributes
    end

    assert_redirected_to artdb_path(assigns(:artdb))
  end

  test "should show artdb" do
    get :show, :id => @artdb.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @artdb.to_param
    assert_response :success
  end

  test "should update artdb" do
    put :update, :id => @artdb.to_param, :artdb => @artdb.attributes
    assert_redirected_to artdb_path(assigns(:artdb))
  end

  test "should destroy artdb" do
    assert_difference('Artdb.count', -1) do
      delete :destroy, :id => @artdb.to_param
    end

    assert_redirected_to artdbs_path
  end
end
