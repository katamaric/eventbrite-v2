class DeviseMailer < Devise::Mailer
  def confirmation_instructions(record, token, opts = {})
    headers["X-SMTPAPI"] = { category: "Confirmation Email" }.to_json
    super
  end

  def reset_password_instructions(record, token, opts = {})
    headers["X-SMTPAPI"] = { category: "Password Reset" }.to_json
    super
  end
end

