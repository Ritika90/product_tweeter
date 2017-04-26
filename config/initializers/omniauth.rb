Rails.application.config.middleware.use OmniAuth::Builder do
  provider :shopify,
    ShopifyApp.configuration.api_key,
    ShopifyApp.configuration.secret,
    scope: ShopifyApp.configuration.scope,
    redirect_uri: "http://127.0.0.1:3000/login/finalize/auth/shopify/callback/"
end
