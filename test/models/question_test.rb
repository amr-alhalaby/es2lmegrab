# == Schema Information
#
# Table name: questions
#
#  id          :integer          not null, primary key
#  header      :string(255)      not null
#  body        :text(65535)      not null
#  picture_url :string(255)
#  up          :integer
#  down        :integer
#  disabled    :boolean          default(FALSE), not null
#  owner_id    :integer          not null
#

require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
