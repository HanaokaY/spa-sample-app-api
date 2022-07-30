# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'localhost:8080'

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
# origins : どのフロント側のオリジンを許可するかの設定
# resource: 許可したいAPI側のリソースのファイルの設定
# methods : 許可したいHTTPメソッドの設定
# headers : 許可したいHTTPヘッダーの設定