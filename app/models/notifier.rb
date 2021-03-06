class Notifier < ActionMailer::Base  

default_url_options[:host] = "aether.cattivi.com"  
  
def password_reset_instructions(user)  
  subject       "Password Reset Instructions"  
  from          "AEther Notifier "  
  recipients    user.email  
  sent_on       Time.now  
  body          :edit_password_reset_url => edit_password_reset_url(user.perishable_token)  
end  

end
