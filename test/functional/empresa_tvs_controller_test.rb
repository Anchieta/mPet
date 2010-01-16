require 'test_helper'

class EmpresaTvsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:empresa_tvs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create empresa_tv" do
    assert_difference('EmpresaTv.count') do
      post :create, :empresa_tv => { }
    end

    assert_redirected_to empresa_tv_path(assigns(:empresa_tv))
  end

  test "should show empresa_tv" do
    get :show, :id => empresa_tvs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => empresa_tvs(:one).to_param
    assert_response :success
  end

  test "should update empresa_tv" do
    put :update, :id => empresa_tvs(:one).to_param, :empresa_tv => { }
    assert_redirected_to empresa_tv_path(assigns(:empresa_tv))
  end

  test "should destroy empresa_tv" do
    assert_difference('EmpresaTv.count', -1) do
      delete :destroy, :id => empresa_tvs(:one).to_param
    end

    assert_redirected_to empresa_tvs_path
  end
end
