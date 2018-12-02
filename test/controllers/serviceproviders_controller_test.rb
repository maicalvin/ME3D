require 'test_helper'

class ServiceprovidersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @serviceprovider = serviceproviders(:one)
  end

  test "should get index" do
    get serviceproviders_url
    assert_response :success
  end

  test "should get new" do
    get new_serviceprovider_url
    assert_response :success
  end

  test "should create serviceprovider" do
    assert_difference('Serviceprovider.count') do
      post serviceproviders_url, params: { serviceprovider: {  } }
    end

    assert_redirected_to serviceprovider_url(Serviceprovider.last)
  end

  test "should show serviceprovider" do
    get serviceprovider_url(@serviceprovider)
    assert_response :success
  end

  test "should get edit" do
    get edit_serviceprovider_url(@serviceprovider)
    assert_response :success
  end

  test "should update serviceprovider" do
    patch serviceprovider_url(@serviceprovider), params: { serviceprovider: {  } }
    assert_redirected_to serviceprovider_url(@serviceprovider)
  end

  test "should destroy serviceprovider" do
    assert_difference('Serviceprovider.count', -1) do
      delete serviceprovider_url(@serviceprovider)
    end

    assert_redirected_to serviceproviders_url
  end
end
