# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_dac_module_session',
  :secret      => 'fff77ad30e3a7941ce0954a9ed56393a3a67d2a91167e2521f6e509302d31da511295d415027d85b9eb6ea48fa9df1ac74198ae9de1507b1e93e0f171d17f178'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
