require "capybara"
require "capybara/rspec"
require "selenium-webdriver"

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  # Inclusão do da configuração do Capybara
  config.include Capybara::DSL
end
# Configurar o Capybara para ser executado com o chrome
Capybara.configure do |config|
  config.default_driver = :selenium_chrome
end
