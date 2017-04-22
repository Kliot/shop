Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['206753686486917'], ENV['93a4fafb5ee55ac6f6fd77a9850b4a69']
end