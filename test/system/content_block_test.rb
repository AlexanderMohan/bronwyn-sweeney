# frozen_string_literal: true

require 'application_system_test_case'

class ContentBlockTest < ApplicationSystemTestCase
  # Test homepage content block isn't shown by default and the correct error message is shown
  test "homepage content block isn't shown by default" do
    # Visit the homepage
    visit root_url
    # Find the <h5> tag with the title "Content block not found"
    assert_selector 'h5', text: 'Content block not found'

    # Find the <p> tag with the body "Content block not found"
    assert_selector 'p', text: 'Content block not found'
  end
end
