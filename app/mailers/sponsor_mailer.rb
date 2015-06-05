class SponsorMailer < Devise::Mailer
  include Devise::Mailers::Helpers

  default from: "susheel1688@gmail.com"

  def confirmation_instructions(record,token,opts={})
    super
    #devise_mail(record, :confirmation_instructions)
  end

  def reset_password_instructions(record,token,opts={})
    super
    #devise_mail(record, :reset_password_instructions)
  end

  def unlock_instructions(record,token,opts={})
    super
    #devise_mail(record, :unlock_instructions)
  end

  # you can then put any of your own methods here
  
end
