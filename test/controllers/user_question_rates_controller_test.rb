# == Schema Information
#
# Table name: user_question_rate
#
#  user_id     :integer          not null
#  question_id :integer          not null
#  rate        :boolean          not null
#

require 'test_helper'

class UserQuestionRatesControllerTest < ActionController::TestCase
  setup do
    @user_question_rate = user_question_rates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_question_rates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_question_rate" do
    assert_difference('UserQuestionRate.count') do
      post :create, user_question_rate: {  }
    end

    assert_redirected_to user_question_rate_path(assigns(:user_question_rate))
  end

  test "should show user_question_rate" do
    get :show, id: @user_question_rate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_question_rate
    assert_response :success
  end

  test "should update user_question_rate" do
    patch :update, id: @user_question_rate, user_question_rate: {  }
    assert_redirected_to user_question_rate_path(assigns(:user_question_rate))
  end

  test "should destroy user_question_rate" do
    assert_difference('UserQuestionRate.count', -1) do
      delete :destroy, id: @user_question_rate
    end

    assert_redirected_to user_question_rates_path
  end
end
