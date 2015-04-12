require 'test_helper'

class ThingsControllerTest < ActionController::TestCase
  setup do
    @thing = things(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:things)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thing" do
    assert_difference('Thing.count') do
      post :create, params: { thing: { name: @thing.name } }
    end

    assert_redirected_to thing_path(assigns(:thing))
  end

  test "should show thing" do
    get :show, params: { id: @thing }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { id: @thing }
    assert_response :success
  end

  test "should update thing" do
    patch :update, params: { id: @thing, thing: { name: @thing.name } }
    assert_redirected_to thing_path(assigns(:thing))
  end

  test "should destroy thing" do
    assert_difference('Thing.count', -1) do
      delete :destroy, params: { id: @thing }
    end

    assert_redirected_to things_path
  end
end
