require 'test_helper'

class PoopstationsControllerTest < ActionController::TestCase
  setup do
    @poopstation = poopstations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poopstations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poopstation" do
    assert_difference('Poopstation.count') do
      post :create, poopstation: { gender: @poopstation.gender, location_id: @poopstation.location_id, stalltalkian_id: @poopstation.stalltalkian_id, sticker_type: @poopstation.sticker_type }
    end

    assert_redirected_to poopstation_path(assigns(:poopstation))
  end

  test "should show poopstation" do
    get :show, id: @poopstation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poopstation
    assert_response :success
  end

  test "should update poopstation" do
    put :update, id: @poopstation, poopstation: { gender: @poopstation.gender, location_id: @poopstation.location_id, stalltalkian_id: @poopstation.stalltalkian_id, sticker_type: @poopstation.sticker_type }
    assert_redirected_to poopstation_path(assigns(:poopstation))
  end

  test "should destroy poopstation" do
    assert_difference('Poopstation.count', -1) do
      delete :destroy, id: @poopstation
    end

    assert_redirected_to poopstations_path
  end
end
