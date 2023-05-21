# frozen_string_literal: true

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
class Event < ApplicationRecord
  # Validate the presence of the title, start date, end date
  validates_presence_of :title, :start_date, :end_date

  # Define the 'next' method, which returns the next event by end date in the future
  def next
    Event.where('end_date > ?', Time.now).order(:end_date).first
  end
end
