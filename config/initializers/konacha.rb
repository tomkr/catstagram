Konacha.configure do |config|
  # The directory where Konacha will look for tests.
  config.spec_dir     = "spec/javascripts"
  # You have to name your spec files example_spec or example_test by default.
  config.spec_matcher = /_spec\.|_test\./
  config.stylesheets  = %w(application)
  # The default driver for running tests is :selenium
  config.driver       = :selenium
end if defined?(Konacha)
