# == Schema Information
#
# Table name: clips
#
#  id          :integer          not null, primary key
#  date        :date             not null
#  description :string(255)
#  title       :string(255)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  video_id    :string(255)      not null
#
# Indexes
#
#  index_clips_on_video_id  (video_id) UNIQUE
#
require "test_helper"

class ClipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
