# frozen_string_literal: true

module PublicHelper
  def content_block(id, hide_errors)
    block = ContentBlock.find_by alias: id
    return if block.nil? && hide_errors
    return 'Content block not found' if block.nil?

    block.body.html_safe
  end 
end
