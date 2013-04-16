# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.

# Make sure your secret_token is kept private
# if you're sharing your code publicly.
Railsgirls::Application.config.secret_token = Rails.env.production?? ENV['SECRET_TOKEN'] : 'e22aca40afedd5ecc9c67bdbef088c3e7c2d42541b52070dee45ca239e018d8aa7a08d1fb083a0d87599d01e7b8d0606ac13dc58368119f13f37872c9bf8978b'
