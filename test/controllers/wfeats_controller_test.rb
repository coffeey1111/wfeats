require 'test_helper'

class WfeatsControllerTest < ActionController::TestCase
  setup do
    @wfeat = wfeats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wfeats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wfeat" do
    assert_difference('Wfeat.count') do
      post :create, wfeat: { name: @wfeat.name }
    end

    assert_redirected_to wfeat_path(assigns(:wfeat))
  end

  test "should show wfeat" do
    get :show, id: @wfeat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wfeat
    assert_response :success
  end

  test "should update wfeat" do
    patch :update, id: @wfeat, wfeat: { name: @wfeat.name }
    assert_redirected_to wfeat_path(assigns(:wfeat))
  end

  test "should destroy wfeat" do
    assert_difference('Wfeat.count', -1) do
      delete :destroy, id: @wfeat
    end

    assert_redirected_to wfeats_path
  end
end
