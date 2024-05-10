# frozen_string_literal: true

# Contains all helper methods for interacting with the Mailersend API
module MailersendHelper
  require 'mailersend-ruby'
  # Send an email notification using the notification template
  def email_notification_common(subject, body) # rubocop:disable Metrics/MethodLength
    # Intialize the email class
    ms_email = Mailersend::Email.new

    # Add parameters
    ms_email.add_recipients('email' => Rails.application.credentials.mail[:contact_recipient], 'name' => Rails.application.credentials.mail[:contact_recipient_name])
    ms_email.add_from('email' => Rails.application.credentials.mail[:contact_from],
                      'name' => Rails.application.credentials.mail[:contact_from_name])
    ms_email.add_subject(subject)
    ms_email.add_template_id('3z0vklonq5e47qrx')
    ms_email.add_reply_to('email' => Rails.application.credentials.mail[:reply_to], 'name' => Rails.application.credentials.mail[:reply_to_name])

    variables = {
      email: Rails.application.credentials.mail[:contact_recipient],
      substitutions: [
        {
          var: 'notification_body',
          value: body
        },
        {
          var: 'notification_title',
          value: subject
        }
      ]
    }

    ms_email.add_variables(variables)
    ms_email
  end

  def email_notification_override_reply_to(subject, body, reply_to_address, reply_to_name)
    ms_email = email_notification_common(subject, body)
    # Add the reply_to address
    ms_email.add_reply_to('email' => reply_to_address, 'name' => reply_to_name)
    # Send the email
    ms_email.send
  end

  def email_notification_default(subject, body)
    ms_email = email_notification_common(subject, body)
    # Send the email
    ms_email.send
  end
end
