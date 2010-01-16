require 'test_helper'

class ResenhasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resenhas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resenha" do
    assert_difference('Resenha.count') do
      post :create, :resenha => { }
    end

    assert_redirected_to resenha_path(assigns(:resenha))
  end

  test "should show resenha" do
    get :show, :id => resenhas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => resenhas(:one).to_param
    assert_response :success
  end

  test "should update resenha" do
    put :update, :id => resenhas(:one).to_param, :resenha => { }
    assert_redirected_to resenha_path(assigns(:resenha))
  end

  test "should destroy resenha" do
    assert_difference('Resenha.count', -1) do
      delete :destroy, :id => resenhas(:one).to_param
    end

    assert_redirected_to resenhas_path
  end
end
