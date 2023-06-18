# frozen_string_literal: true
# Contains all helper methods for interacting with the Mailersend API
module MailersendHelper
    require 'mailersend-ruby'
  # Send an email notification using the notification template
  def email_notification_common(subject, body) # rubocop:disable Metrics/MethodLength
    require 'mailersend-ruby'
    # Intialize the email class
    ms_email = Mailersend::Email.new

    # Add parameters
    ms_email.add_recipients('email' => 'me+notify@alexandermohan.com', 'name' => 'AlexanderMohan Test')
    ms_email.add_from('email' => 'service-notifications@notify.alexandermohan.com', 'name' => 'alexanderMOHAN Service Notifications')
    ms_email.add_subject(subject)
    ms_email.add_template_id('3z0vklonq5e47qrx')
    ms_email.add_reply_to('email' => 'contact@alexandermohan.com', 'name' => 'alexanderMOHAN Customer Service')

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
    return ms_email
  end

  def email_notification_override_reply_to(subject,body,reply_to_address,reply_to_name)
    require 'mailersend-ruby'
    ms_email = email_notification_common(subject,body)
    # Add the reply_to address
    ms_email.add_reply_to('email'=>reply_to_address,'name'=>reply_to_name)
    # Send the email
    ms_email.send
  end

  def email_notification_default(subject,body)
    require 'mailersend-ruby'
    ms_email = email_notification_common(subject,body)
    # Send the email
    ms_email.send
  end
end
