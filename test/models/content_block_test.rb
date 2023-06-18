# == Schema Information
#
# Table name: content_blocks
#
#  id         :integer          not null, primary key
#  alias      :string           not null
#  body       :text             not null
#  cta_label  :string
#  cta_link   :string
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class ContentBlockTest < ActiveSupport::TestCase
  # Test creation of content block
  test "should create content block" do
    content_block = ContentBlock.new(
      title: 'Test Title',
      body: 'Test body',
      alias: 'test-alias'
    )
    assert content_block.save
  end

  # Test content block title presence
  test "should not save content block without title" do
    content_block = ContentBlock.new(
      body: 'Test body',
      alias: 'test-alias'
    )
    assert_not content_block.save
  end

  # Test content block body presence
  test "should not save content block without body" do
    content_block = ContentBlock.new(
      title: 'Test Title',
      alias: 'test-alias'
    )
    assert_not content_block.save
  end

  # Test content block alias presence
  test "should not save content block without alias" do
    content_block = ContentBlock.new(
      title: 'Test Title',
      body: 'Test body'
    )
    assert_not content_block.save
  end
end
