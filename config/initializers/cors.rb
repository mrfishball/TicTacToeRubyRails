Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'live-ttt-web-client.herokuapp', 'stage-ttt-web-client.herokuapp', 'localhost:8080'
    resource '*',
      headers: :any,
      methods: %i(get post put patch delete options head)
  end
end
