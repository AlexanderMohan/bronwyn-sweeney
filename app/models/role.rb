# == Schema Information
#
# Table name: roles
#
#  id          :integer          not null, primary key
#  description :string
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Role < ApplicationRecord
    # Validate the presence of the name
    validates_presence_of :name
end
