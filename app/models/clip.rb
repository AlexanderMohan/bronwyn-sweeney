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
class Clip < ApplicationRecord
    # Validations
    validates :video_id, presence: true, uniqueness: true
    validates :title, presence: true
    validates :date, presence: true

    # Scopes
    scope :by_date, -> { order(date: :desc) }
    scope :by_title, -> { order(title: :asc) }
    scope :by_video_id, -> { order(video_id: :asc) }

    # Methods
    def to_param
        video_id
    end

    def self.search(search)
        if search
            where('title LIKE ?', "%#{search}%")
        else
            all
        end
    end
end
