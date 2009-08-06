# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :session_key => '_aether_session',
  :secret      => '5ad8f26a559953d3625f822e89287260a3e3582ddd0cd1ac81f1be598255d3670c4c42153413178abf95775dd23aa326e644ac1d0e7ecf8d46a4eb0bb81a24f0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
ActionController::Base.session_store = :active_record_store
