# == Schema Information
#
# Table name: question_tags
#
#  TAG_id      :integer          not null
#  QUESTION_id :integer          not null
#  disabled    :boolean          default(FALSE), not null
#

require 'test_helper'

class QuestionTagTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
