require 'test_helper'

class StalltalkiansControllerTest < ActionController::TestCase
  setup do
    @stalltalkian = stalltalkians(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stalltalkians)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stalltalkian" do
    assert_difference('Stalltalkian.count') do
      post :create, stalltalkian: { email: @stalltalkian.email, name: @stalltalkian.name, password: @stalltalkian.password }
    end

    assert_redirected_to stalltalkian_path(assigns(:stalltalkian))
  end

  test "should show stalltalkian" do
    get :show, id: @stalltalkian
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stalltalkian
    assert_response :success
  end

  test "should update stalltalkian" do
    put :update, id: @stalltalkian, stalltalkian: { email: @stalltalkian.email, name: @stalltalkian.name, password: @stalltalkian.password }
    assert_redirected_to stalltalkian_path(assigns(:stalltalkian))
  end

  test "should destroy stalltalkian" do
    assert_difference('Stalltalkian.count', -1) do
      delete :destroy, id: @stalltalkian
    end

    assert_redirected_to stalltalkians_path
  end
end
