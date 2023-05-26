require "test_helper"

class ContactControllerTest < ActionDispatch::IntegrationTest
  test "should get first_name:string" do
    get contact_first_name:string_url
    assert_response :success
  end

  test "should get last_name:string" do
    get contact_last_name:string_url
    assert_response :success
  end

  test "should get email:string" do
    get contact_email:string_url
    assert_response :success
  end

  test "should get phone:string" do
    get contact_phone:string_url
    assert_response :success
  end
end
