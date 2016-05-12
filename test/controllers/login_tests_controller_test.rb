require 'test_helper'

class LoginTestsControllerTest < ActionController::TestCase
  setup do
    @login_test = login_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:login_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create login_test" do
    assert_difference('LoginTest.count') do
      post :create, login_test: {  }
    end

    assert_redirected_to login_test_path(assigns(:login_test))
  end

  test "should show login_test" do
    get :show, id: @login_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @login_test
    assert_response :success
  end

  test "should update login_test" do
    patch :update, id: @login_test, login_test: {  }
    assert_redirected_to login_test_path(assigns(:login_test))
  end

  test "should destroy login_test" do
    assert_difference('LoginTest.count', -1) do
      delete :destroy, id: @login_test
    end

    assert_redirected_to login_tests_path
  end
end
