# email enabled in production
config.action_mailer.smtp_settings = {
address: "smtp.sendgrid.net",
port: 587,
domain: Rails.application.secrets.domain_name,
authentication: "plain",
user_name: Rails.application.secrets.email_provider_username,
password: Rails.application.secrets.email_provider_password
}
# ActionMailer Config
config.action_mailer.default_url_options = { :host => Rails.application.secrets.domain_name }
config.action_mailer.delivery_method = :smtp
config.action_mailer.perform_deliveries = true
config.action_mailer.raise_delivery_errors = false