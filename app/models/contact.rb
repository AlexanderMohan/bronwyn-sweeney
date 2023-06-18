# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  email      :string           not null
#  message    :text             not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Contact < ApplicationRecord
    # Validate the presence of the name, email, and message
    validates_presence_of :name, :email, :message

    # Validate the format of the email
    validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end
