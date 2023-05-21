# == Schema Information
#
# Table name: content_blocks
#
#  id         :integer          not null, primary key
#  alias      :string
#  body       :text
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ContentBlock < ApplicationRecord
    # Validate the presence of the title and body
    validates_presence_of :title, :body
end
