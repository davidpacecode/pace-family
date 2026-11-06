RubyLLM.configure do |config|
  # config.openai_api_key = ENV.fetch("OPENAI_API_KEY", Rails.application.credentials.dig(:openai_api_key))
  # config.default_model = "gpt-5-nano"
  config.gemini_api_key = ENV.fetch("GEMINI_API_KEY", Rails.application.credentials.dig(:gemini_api_key))
  config.default_model = 'gemini-3.8-flash'
end
