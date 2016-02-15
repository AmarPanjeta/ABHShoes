Rails.configuration.stripe = {
  :publishable_key => 'pk_test_w2y76hBfXyXxh6eGExFiMgVm',
  :secret_key      => 'sk_test_ELiirCapUPo1KqA0JdLREXFk'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
