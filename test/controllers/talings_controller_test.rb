require 'test_helper'

class TalingsControllerTest < ActionController::TestCase
  setup do
    @taling = talings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:talings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taling" do
    assert_difference('Taling.count') do
      post :create, taling: { content: @taling.content, title: @taling.title }
    end

    assert_redirected_to taling_path(assigns(:taling))
  end

  test "should show taling" do
    get :show, id: @taling
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taling
    assert_response :success
  end

  test "should update taling" do
    patch :update, id: @taling, taling: { content: @taling.content, title: @taling.title }
    assert_redirected_to taling_path(assigns(:taling))
  end

  test "should destroy taling" do
    assert_difference('Taling.count', -1) do
      delete :destroy, id: @taling
    end

    assert_redirected_to talings_path
  end
end
