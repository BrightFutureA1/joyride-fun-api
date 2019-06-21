require 'test_helper'

class JoyRideFunsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @joy_ride_fun = joy_ride_funs(:one)
  end

  test "should get index" do
    get joy_ride_funs_url, as: :json
    assert_response :success
  end

  test "should create joy_ride_fun" do
    assert_difference('JoyRideFun.count') do
      post joy_ride_funs_url, params: { joy_ride_fun: { comments: @joy_ride_fun.comments, image: @joy_ride_fun.image, location: @joy_ride_fun.location, name: @joy_ride_fun.name } }, as: :json
    end

    assert_response 201
  end

  test "should show joy_ride_fun" do
    get joy_ride_fun_url(@joy_ride_fun), as: :json
    assert_response :success
  end

  test "should update joy_ride_fun" do
    patch joy_ride_fun_url(@joy_ride_fun), params: { joy_ride_fun: { comments: @joy_ride_fun.comments, image: @joy_ride_fun.image, location: @joy_ride_fun.location, name: @joy_ride_fun.name } }, as: :json
    assert_response 200
  end

  test "should destroy joy_ride_fun" do
    assert_difference('JoyRideFun.count', -1) do
      delete joy_ride_fun_url(@joy_ride_fun), as: :json
    end

    assert_response 204
  end
end
