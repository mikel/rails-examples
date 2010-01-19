# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_test_3_session',
  :secret => 'e6693e3867dbeefc7f0b26a3758662e452b230d4abf14b1731aa8ab568f0b8ba9840b33847e565ac18f1655adde3e2d97e872a3c1626603e4f3065232f7a35fe'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
