require 'test_helper'

class TechnologiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @technology = technologies(:one)
  end

  test "should get index" do
    get technologies_url
    assert_response :success
  end

  test "should get new" do
    get new_technology_url
    assert_response :success
  end

  test "should create technology" do
    assert_difference('Technology.count') do
      post technologies_url, params: { technology: { date_created: @technology.date_created, description: @technology.description, logo: @technology.logo, technology: @technology.technology, user_id: @technology.user_id, version: @technology.version } }
    end

    assert_redirected_to technology_url(Technology.last)
  end

  test "should show technology" do
    get technology_url(@technology)
    assert_response :success
  end

  test "should get edit" do
    get edit_technology_url(@technology)
    assert_response :success
  end

  test "should update technology" do
    patch technology_url(@technology), params: { technology: { date_created: @technology.date_created, description: @technology.description, logo: @technology.logo, technology: @technology.technology, user_id: @technology.user_id, version: @technology.version } }
    assert_redirected_to technology_url(@technology)
  end

  test "should destroy technology" do
    assert_difference('Technology.count', -1) do
      delete technology_url(@technology)
    end

    assert_redirected_to technologies_url
  end
end
