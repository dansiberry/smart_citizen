# From Le Wagon slides
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/reporters'
Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

class ActiveSupport::TestCase
  fixtures :all
end

require 'capybara/rails'
class ActionDispatch::IntegrationTest
  include Capybara::DSL
  def teardown
    Capybara.reset_sessions!
    Capybara.use_default_driver
    Warden.test_reset!
  end
end

require 'capybara/poltergeist'
Capybara.default_driver = :poltergeist

include Warden::Test::Helpers
Warden.test_mode!

# ** Uncomment to skip JS errors in rake **
# Capybara.register_driver :poltergeist do |app|
#   Capybara::Poltergeist::Driver.new(app, {js_errors: false})
# end
