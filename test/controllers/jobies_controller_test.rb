require 'test_helper'

class JobiesControllerTest < ActionController::TestCase
  setup do
    @joby = jobies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create joby" do
    assert_difference('Joby.count') do
      post :create, joby: { lastname: @joby.lastname, name: @joby.name, occupation: @joby.occupation, phone: @joby.phone }
    end

    assert_redirected_to joby_path(assigns(:joby))
  end

  test "should show joby" do
    get :show, id: @joby
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @joby
    assert_response :success
  end

  test "should update joby" do
    patch :update, id: @joby, joby: { lastname: @joby.lastname, name: @joby.name, occupation: @joby.occupation, phone: @joby.phone }
    assert_redirected_to joby_path(assigns(:joby))
  end

  test "should destroy joby" do
    assert_difference('Joby.count', -1) do
      delete :destroy, id: @joby
    end

    assert_redirected_to jobies_path
  end
end
