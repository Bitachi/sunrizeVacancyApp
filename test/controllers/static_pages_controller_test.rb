require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "サンライズ空席履歴"
  end
  
  test "should get root" do
    get root_url
    assert_response :success
    assert_select "title", "ホーム | #{@base_title}"
  end
  
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "ホーム | #{@base_title}"
  end
  
  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "問合せ | #{@base_title}"
  end
end
