# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mpet_session',
  :secret      => 'f01d17b2edf50c5bad12868d041a3268a30a3450d04361232000a48530654bc203e9dc4c6b78d8c7890d14571aa13cfb594e6b0cf42370ef291a255cf576d0ed'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
