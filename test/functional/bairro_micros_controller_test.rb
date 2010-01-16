require 'test_helper'

class BairroMicrosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bairro_micros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bairro_micro" do
    assert_difference('BairroMicro.count') do
      post :create, :bairro_micro => { }
    end

    assert_redirected_to bairro_micro_path(assigns(:bairro_micro))
  end

  test "should show bairro_micro" do
    get :show, :id => bairro_micros(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => bairro_micros(:one).to_param
    assert_response :success
  end

  test "should update bairro_micro" do
    put :update, :id => bairro_micros(:one).to_param, :bairro_micro => { }
    assert_redirected_to bairro_micro_path(assigns(:bairro_micro))
  end

  test "should destroy bairro_micro" do
    assert_difference('BairroMicro.count', -1) do
      delete :destroy, :id => bairro_micros(:one).to_param
    end

    assert_redirected_to bairro_micros_path
  end
end
