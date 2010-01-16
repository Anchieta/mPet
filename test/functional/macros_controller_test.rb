require 'test_helper'

class MacrosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:macros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create macro" do
    assert_difference('Macro.count') do
      post :create, :macro => { }
    end

    assert_redirected_to macro_path(assigns(:macro))
  end

  test "should show macro" do
    get :show, :id => macros(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => macros(:one).to_param
    assert_response :success
  end

  test "should update macro" do
    put :update, :id => macros(:one).to_param, :macro => { }
    assert_redirected_to macro_path(assigns(:macro))
  end

  test "should destroy macro" do
    assert_difference('Macro.count', -1) do
      delete :destroy, :id => macros(:one).to_param
    end

    assert_redirected_to macros_path
  end
end
