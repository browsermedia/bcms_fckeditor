# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bcms_fckeditor_session',
  :secret      => '5130b1db43176451c206c7d75d2c8699df63a9a25f50eb03d117eb57cd872f4a2aa8630b6cf3ae8146d162fe88022fde479a99085bce05e6ce4490b7f7b2e998'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
