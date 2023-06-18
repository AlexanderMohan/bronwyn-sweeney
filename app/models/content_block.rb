# == Schema Information
#
# Table name: content_blocks
#
#  id         :integer          not null, primary key
#  alias      :string           not null
#  body       :text             not null
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ContentBlock < ApplicationRecord
    # Validate the presence of the title and body
    validates_presence_of :title, :body, :alias
end
