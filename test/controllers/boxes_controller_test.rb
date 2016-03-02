require 'test_helper'

class BoxesControllerTest < ActionController::TestCase
  setup do
    @box = boxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create box" do
    assert_difference('Box.count') do
      post :create, box: { contents: @box.contents, description: @box.description, end_date: @box.end_date, farm_id: @box.farm_id, length_of_time: @box.length_of_time, name: @box.name, price: @box.price, start_date: @box.start_date }
    end

    assert_redirected_to box_path(assigns(:box))
  end

  test "should show box" do
    get :show, id: @box
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @box
    assert_response :success
  end

  test "should update box" do
    patch :update, id: @box, box: { contents: @box.contents, description: @box.description, end_date: @box.end_date, farm_id: @box.farm_id, length_of_time: @box.length_of_time, name: @box.name, price: @box.price, start_date: @box.start_date }
    assert_redirected_to box_path(assigns(:box))
  end

  test "should destroy box" do
    assert_difference('Box.count', -1) do
      delete :destroy, id: @box
    end

    assert_redirected_to boxes_path
  end
end
