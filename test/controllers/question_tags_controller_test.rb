# == Schema Information
#
# Table name: question_tags
#
#  TAG_id      :integer          not null
#  QUESTION_id :integer          not null
#  disabled    :boolean          default(FALSE), not null
#

require 'test_helper'

class QuestionTagsControllerTest < ActionController::TestCase
  setup do
    @question_tag = question_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_tag" do
    assert_difference('QuestionTag.count') do
      post :create, question_tag: {  }
    end

    assert_redirected_to question_tag_path(assigns(:question_tag))
  end

  test "should show question_tag" do
    get :show, id: @question_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @question_tag
    assert_response :success
  end

  test "should update question_tag" do
    patch :update, id: @question_tag, question_tag: {  }
    assert_redirected_to question_tag_path(assigns(:question_tag))
  end

  test "should destroy question_tag" do
    assert_difference('QuestionTag.count', -1) do
      delete :destroy, id: @question_tag
    end

    assert_redirected_to question_tags_path
  end
end
