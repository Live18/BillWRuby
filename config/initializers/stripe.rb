if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_kcMjF6t0i97v8deMDlK2MyzN',
    :secret_key => 'sk_test_IDiAjhIAEOaGmplWWaXPDvnx'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]