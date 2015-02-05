require 'pony'
require 'mail'
require 'net/smtp'
# Net::SMTP.start('Smtp.gmail.com', 25) do |smtp|
#   # Use the SMTP object smtp only in this block.
# end

# Pony.mail(:to => '8325382674@txt.att.net', :from => 'maximus12793@gmail.com', :subject => 'whatsup bro', :body => 'Hello ruby.', :via => :smtp) # sends via SMTP)


	# 8325382674@txt.att.net


Pony.mail({
  # :to => '7134239262@vtext.com', :subject => 'whatsup thug', :body => '*test* this was sent off my random program',
  :to => '2816855567@txt.att.net', :subject => 'whatsup thug', :body => '*test* this was sent off my text program',
  # :to => '8328293244@txt.att.net', :subject => 'whatsup dingo', :body => '*test* this was sent off my ruby program',

  :via => :smtp,
  :via_options => {
    :address              => 'smtp.gmail.com',
    :port                 => '587',
    :enable_starttls_auto => true,
    :user_name            => 'maximus12793',
    :password             => 'maximilian12793',
    :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
    :domain               => "localhost.localdomain" # the HELO domain provided by the client to the server
  }
})

# Pony.mail(:to => 'you@example.com', :from => 'me@example.com', :subject => 'hi', :body => 'Hello there.')
