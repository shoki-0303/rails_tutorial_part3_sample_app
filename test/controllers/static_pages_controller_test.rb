require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  # テストの内容は
  # Homeページのテスト。Getリクエストをhomeアクションに対して送れば、リクエストのレスポンスは200のはず。
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

end
