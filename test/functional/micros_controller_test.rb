require 'test_helper'

class MicrosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micro" do
    assert_difference('Micro.count') do
      post :create, :micro => { }
    end

    assert_redirected_to micro_path(assigns(:micro))
  end

  test "should show micro" do
    get :show, :id => micros(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => micros(:one).to_param
    assert_response :success
  end

  test "should update micro" do
    put :update, :id => micros(:one).to_param, :micro => { }
    assert_redirected_to micro_path(assigns(:micro))
  end

  test "should destroy micro" do
    assert_difference('Micro.count', -1) do
      delete :destroy, :id => micros(:one).to_param
    end

    assert_redirected_to micros_path
  end
end
