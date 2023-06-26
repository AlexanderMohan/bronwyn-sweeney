# == Schema Information
#
# Table name: social_links
#
#  id               :integer          not null, primary key
#  backgroundColour :string
#  link             :string
#  platformName     :string
#  svg              :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class SocialLink < ApplicationRecord
end
