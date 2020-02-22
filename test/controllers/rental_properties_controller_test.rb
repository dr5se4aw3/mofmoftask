require 'test_helper'

class RentalPropertiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rental_properties_index_url
    assert_response :success
  end

  test "should get new" do
    get rental_properties_new_url
    assert_response :success
  end

  test "should get create" do
    get rental_properties_create_url
    assert_response :success
  end

  test "should get update" do
    get rental_properties_update_url
    assert_response :success
  end

  test "should get destroy" do
    get rental_properties_destroy_url
    assert_response :success
  end

end
