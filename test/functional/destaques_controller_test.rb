require 'test_helper'

class DestaquesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:destaques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create destaque" do
    assert_difference('Destaque.count') do
      post :create, :destaque => { }
    end

    assert_redirected_to destaque_path(assigns(:destaque))
  end

  test "should show destaque" do
    get :show, :id => destaques(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => destaques(:one).to_param
    assert_response :success
  end

  test "should update destaque" do
    put :update, :id => destaques(:one).to_param, :destaque => { }
    assert_redirected_to destaque_path(assigns(:destaque))
  end

  test "should destroy destaque" do
    assert_difference('Destaque.count', -1) do
      delete :destroy, :id => destaques(:one).to_param
    end

    assert_redirected_to destaques_path
  end
end
