require 'test_helper'

class AboutSectionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get about_section_index_url
    assert_response :success
  end

  test "should get new" do
    get about_section_new_url
    assert_response :success
  end

  test "should get create" do
    get about_section_create_url
    assert_response :success
  end

  test "should get edit" do
    get about_section_edit_url
    assert_response :success
  end

  test "should get update" do
    get about_section_update_url
    assert_response :success
  end

end
