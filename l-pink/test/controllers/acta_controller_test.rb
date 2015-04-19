require 'test_helper'

class ActaControllerTest < ActionController::TestCase
  setup do
    @actum = acta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create actum" do
    assert_difference('Acta.count') do
      post :create, actum: { acta_correlativo: @actum.acta_correlativo, acta_fecha: @actum.acta_fecha, id_proyecto: @actum.id_proyecto }
    end

    assert_redirected_to actum_path(assigns(:actum))
  end

  test "should show actum" do
    get :show, id: @actum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @actum
    assert_response :success
  end

  test "should update actum" do
    patch :update, id: @actum, actum: { acta_correlativo: @actum.acta_correlativo, acta_fecha: @actum.acta_fecha, id_proyecto: @actum.id_proyecto }
    assert_redirected_to actum_path(assigns(:actum))
  end

  test "should destroy actum" do
    assert_difference('Acta.count', -1) do
      delete :destroy, id: @actum
    end

    assert_redirected_to acta_index_path
  end
end
