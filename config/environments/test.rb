# Settings specified here will take precedence over those in config/environment.rb

config.gem 'cucumber',    :lib => false,        :version => '>=0.3.94' unless File.directory?(File.join(Rails.root, 'vendor/plugins/cucumber'))
config.gem 'webrat',      :lib => false,        :version => '>=0.4.4'  unless File.directory?(File.join(Rails.root, 'vendor/plugins/webrat'))
config.gem 'rspec',       :lib => false,        :version => '>=1.2.6'  unless File.directory?(File.join(Rails.root, 'vendor/plugins/rspec'))
config.gem 'rspec-rails', :lib => 'spec/rails', :version => '>=1.2.6'  unless File.directory?(File.join(Rails.root, 'vendor/plugins/rspec-rails'))
config.gem 'thoughtbot-shoulda', :lib => false, :version => '>=2.10.2' unless File.directory?(File.join(Rails.root, 'vendor/plugins/thoughtbot-shoulda'))

config.gem 'spork',       :lib => false,        :version => '>=0.5.7'  unless File.directory?(File.join(Rails.root, 'vendor/plugins/spork'))

# The test environment is used exclusively to run your application's
# test suite.  You never need to work with it otherwise.  Remember that
# your test database is "scratch space" for the test suite and is wiped
# and recreated between test runs.  Don't rely on the data there!
config.cache_classes = true

# Log error messages when you accidentally call methods on nil.
config.whiny_nils = true

# Show full error reports and disable caching
config.action_controller.consider_all_requests_local = true
config.action_controller.perform_caching             = false

# Disable request forgery protection in test environment
config.action_controller.allow_forgery_protection    = false

# Tell Action Mailer not to deliver emails to the real world.
# The :test delivery method accumulates sent emails in the
# ActionMailer::Base.deliveries array.
config.action_mailer.delivery_method = :test
