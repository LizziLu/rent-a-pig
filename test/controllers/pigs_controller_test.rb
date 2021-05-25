require 'test_helper'

class PigsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pigs_index_url
    assert_response :success
  end

  test "should get new" do
    get pigs_new_url
    assert_response :success
  end

  test "should get create" do
    get pigs_create_url
    assert_response :success
  end

end
