# == Schema Information
#
# Table name: tags
#
#  id       :integer          not null, primary key
#  title    :string(255)      not null
#  disabled :boolean          default(FALSE), not null
#

require 'test_helper'

class TagTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
