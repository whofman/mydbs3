require 'test_helper'

class TxesControllerTest < ActionController::TestCase
  setup do
    @tx = txes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:txes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tx" do
    assert_difference('Tx.count') do
      post :create, :tx => @tx.attributes
    end

    assert_redirected_to tx_path(assigns(:tx))
  end

  test "should show tx" do
    get :show, :id => @tx.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tx.to_param
    assert_response :success
  end

  test "should update tx" do
    put :update, :id => @tx.to_param, :tx => @tx.attributes
    assert_redirected_to tx_path(assigns(:tx))
  end

  test "should destroy tx" do
    assert_difference('Tx.count', -1) do
      delete :destroy, :id => @tx.to_param
    end

    assert_redirected_to txes_path
  end
end
