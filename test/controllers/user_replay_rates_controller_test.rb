require 'test_helper'

class UserReplayRatesControllerTest < ActionController::TestCase
  setup do
    @user_replay_rate = user_replay_rates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_replay_rates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_replay_rate" do
    assert_difference('UserReplayRate.count') do
      post :create, user_replay_rate: {  }
    end

    assert_redirected_to user_replay_rate_path(assigns(:user_replay_rate))
  end

  test "should show user_replay_rate" do
    get :show, id: @user_replay_rate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_replay_rate
    assert_response :success
  end

  test "should update user_replay_rate" do
    patch :update, id: @user_replay_rate, user_replay_rate: {  }
    assert_redirected_to user_replay_rate_path(assigns(:user_replay_rate))
  end

  test "should destroy user_replay_rate" do
    assert_difference('UserReplayRate.count', -1) do
      delete :destroy, id: @user_replay_rate
    end

    assert_redirected_to user_replay_rates_path
  end
end
