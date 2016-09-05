Rails.configuration.stripe = {
  :publishable_key => 'pk_test_OCGJuHOOUvdfIhjALj7dxTZc',
  :secret_key      => 'sk_test_BWFMB3TRQIPAkWDcrNfDGQ7u'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]


 