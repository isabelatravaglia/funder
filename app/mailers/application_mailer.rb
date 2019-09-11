class ApplicationMailer < ActionMailer::Base
  default from: ' "The Funder Team" <admin@funder-app.site>'
  layout 'mailer'
end
