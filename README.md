# README

## Development Configuration
### Rails
To configure the secret key base: `echo "SECRET_KEY_BASE='$(rake secret)'" >> .ruby-env`.

### Devise
To configure the secret key: `echo "DEVISE_SECRET_KEY='$(rake secret)'" >> .ruby-env`.
