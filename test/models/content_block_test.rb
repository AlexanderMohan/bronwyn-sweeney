# == Schema Information
#
# Table name: content_blocks
#
#  id         :integer          not null, primary key
#  alias      :string
#  body       :text
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class ContentBlockTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
