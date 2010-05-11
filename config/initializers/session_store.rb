# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_spcmcm_session',
  :secret      => 'aacae9f6a696f04ff926fe016d5667d53eb037b4c06940b6cca52328d17eb7253a064dcd398ce2756eda8a6c7236a7160f65a9385e47d544a68137a4bc0c290c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
