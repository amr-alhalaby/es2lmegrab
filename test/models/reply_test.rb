# == Schema Information
#
# Table name: replies
#
#  id              :integer          not null, primary key
#  body            :text(65535)      not null
#  picture_url     :string(255)
#  up              :integer
#  down            :integer
#  disabled        :boolean          default(FALSE), not null
#  parent_reply_id :integer
#  owner_id        :integer          not null
#

require 'test_helper'

class ReplyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
