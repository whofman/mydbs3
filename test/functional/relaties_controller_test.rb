require 'test_helper'

class RelatiesControllerTest < ActionController::TestCase
  setup do
    @relaty = relaties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:relaties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create relaty" do
    assert_difference('Relatie.count') do
      post :create, :relaty => @relaty.attributes
    end

    assert_redirected_to relaty_path(assigns(:relaty))
  end

  test "should show relaty" do
    get :show, :id => @relaty.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @relaty.to_param
    assert_response :success
  end

  test "should update relaty" do
    put :update, :id => @relaty.to_param, :relaty => @relaty.attributes
    assert_redirected_to relaty_path(assigns(:relaty))
  end

  test "should destroy relaty" do
    assert_difference('Relatie.count', -1) do
      delete :destroy, :id => @relaty.to_param
    end

    assert_redirected_to relaties_path
  end
end
