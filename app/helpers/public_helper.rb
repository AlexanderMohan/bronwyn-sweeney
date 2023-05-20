# frozen_string_literal: true

module PublicHelper
  def content_block(id, hide_errors)
    block = ContentBlock.find_by alias: id
    return if block.nil? && hide_errors
    return 'Content block not found' if block.nil?

    block.body.html_safe
  end

  # Get content block title
  def content_block_title(id, hide_errors)
    block = ContentBlock.find_by alias: id
    return if block.nil? && hide_errors
    return 'Content block not found' if block.nil?

    block.title
  end

  def find_event(id)
    event = Event.find_by(id:)
    return if event.nil?

    event
  end

  # Find next event by end date in the future
  def next_event
    event = Event.where('end_date > ?', Time.now).order(:end_date).first
    return if event.nil?

    event
  end

  # Array of events in the future by end date
  def future_events
    Event.where('end_date > ?', Time.now).order(:end_date)
  end
end
