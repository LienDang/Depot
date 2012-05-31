require 'test_helper'

class UssrsControllerTest < ActionController::TestCase
  setup do
    @ussr = ussrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ussrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ussr" do
    assert_difference('Ussr.count') do
      post :create, ussr: { name: @ussr.name, password_digest: @ussr.password_digest }
    end

    assert_redirected_to ussr_path(assigns(:ussr))
  end

  test "should show ussr" do
    get :show, id: @ussr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ussr
    assert_response :success
  end

  test "should update ussr" do
    put :update, id: @ussr, ussr: { name: @ussr.name, password_digest: @ussr.password_digest }
    assert_redirected_to ussr_path(assigns(:ussr))
  end

  test "should destroy ussr" do
    assert_difference('Ussr.count', -1) do
      delete :destroy, id: @ussr
    end

    assert_redirected_to ussrs_path
  end
end
