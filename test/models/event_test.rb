# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  cta         :string
#  cta_label   :string
#  description :text
#  end_date    :date
#  image_url   :string
#  start_date  :date
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
