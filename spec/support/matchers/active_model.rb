Dir[Rails.root.join('spec/support/matchers/active_model/**/*.rb')].sort.each { |f| require f }

RSpec.configure do |config|
  config.include CustomMatchers::ActiveModel, type: :model
end
