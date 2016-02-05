require 'test_helper'

class DefinationsControllerTest < ActionController::TestCase
  setup do
    @defination = definations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:definations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create defination" do
    assert_difference('Defination.count') do
      post :create, defination: { description: @defination.description, keyword: @defination.keyword, know_more: @defination.know_more }
    end

    assert_redirected_to defination_path(assigns(:defination))
  end

  test "should show defination" do
    get :show, id: @defination
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @defination
    assert_response :success
  end

  test "should update defination" do
    patch :update, id: @defination, defination: { description: @defination.description, keyword: @defination.keyword, know_more: @defination.know_more }
    assert_redirected_to defination_path(assigns(:defination))
  end

  test "should destroy defination" do
    assert_difference('Defination.count', -1) do
      delete :destroy, id: @defination
    end

    assert_redirected_to definations_path
  end
end
