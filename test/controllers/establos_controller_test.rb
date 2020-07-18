require 'test_helper'

class EstablosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get establos_index_url
    assert_response :success
  end

  test "should get show" do
    get establos_show_url
    assert_response :success
  end

end
