# frozen_string_literal: true
# Contains all helper methods for interacting with the Mailersend API
module MailersendHelper
  # Send an email notification using the notification template
  def email_notification(subject, body) # rubocop:disable Metrics/MethodLength
    require 'mailersend-ruby'

    # Intialize the email class
    ms_email = Mailersend::Email.new

    # Add parameters
    ms_email.add_recipients('email' => 'me+notify@alexandermohan.com', 'name' => 'AlexanderMohan Test')
    ms_email.add_from('email' => 'service-notifications@notify.alexandermohan.com',
                      'name' => 'alexanderMOHAN Service Notifications')
    ms_email.add_subject(subject)
    ms_email.add_template_id('3z0vklonq5e47qrx')
    If reply_to.exists? do ms_email.add_reply_to(reply_to) end

    variables = {
      email: 'me+notify@alexandermohan.com',
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

    # Send the email
    ms_email.send
  end
end
