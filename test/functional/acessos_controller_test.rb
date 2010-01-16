require 'test_helper'

class AcessosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acessos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acesso" do
    assert_difference('Acesso.count') do
      post :create, :acesso => { }
    end

    assert_redirected_to acesso_path(assigns(:acesso))
  end

  test "should show acesso" do
    get :show, :id => acessos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => acessos(:one).to_param
    assert_response :success
  end

  test "should update acesso" do
    put :update, :id => acessos(:one).to_param, :acesso => { }
    assert_redirected_to acesso_path(assigns(:acesso))
  end

  test "should destroy acesso" do
    assert_difference('Acesso.count', -1) do
      delete :destroy, :id => acessos(:one).to_param
    end

    assert_redirected_to acessos_path
  end
end
