require 'test_helper'

class FindCsaControllerTest < ActionController::TestCase
  test "should get all_boxes" do
    get :all_boxes
    assert_response :success
  end

  test "should get all_farms" do
    get :all_farms
    assert_response :success
  end

  test "should get filter_search" do
    get :filter_search
    assert_response :success
  end

end
