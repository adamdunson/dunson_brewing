# README

## Configuration
### Rails
To configure the secret key base: `echo "SECRET_KEY_BASE='$(rake secret)'" >> .ruby-env`.

### Devise
To configure the Devise secret key: `echo "DEVISE_SECRET_KEY='$(rake secret)'" >> .ruby-env`.

### Mandrill (production environment only)
Check Mandrill for the API credentials (https://mandrillapp.com/settings/index). These should be in `ENV['MANDRILL_USERNAME']` and `ENV['MANDRILL_API_KEY']`.
