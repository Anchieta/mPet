require 'test_helper'

class TplogradourosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tplogradouros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tplogradouro" do
    assert_difference('Tplogradouro.count') do
      post :create, :tplogradouro => { }
    end

    assert_redirected_to tplogradouro_path(assigns(:tplogradouro))
  end

  test "should show tplogradouro" do
    get :show, :id => tplogradouros(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => tplogradouros(:one).to_param
    assert_response :success
  end

  test "should update tplogradouro" do
    put :update, :id => tplogradouros(:one).to_param, :tplogradouro => { }
    assert_redirected_to tplogradouro_path(assigns(:tplogradouro))
  end

  test "should destroy tplogradouro" do
    assert_difference('Tplogradouro.count', -1) do
      delete :destroy, :id => tplogradouros(:one).to_param
    end

    assert_redirected_to tplogradouros_path
  end
end
