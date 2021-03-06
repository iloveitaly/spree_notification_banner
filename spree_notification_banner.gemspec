# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_notification_banner'
  s.version     = '1.2.3'
  s.summary     = 'Conditionally adds a simple notification/news banner'
  s.description = 'Conditionally adds a simple notification/news banner. Similiar to zappos.com'
  s.required_ruby_version = '>= 1.8.7'

  s.author    = 'Michael Bianco'
  s.email     = 'info@cliffsidedev.com'
  s.homepage  = 'http://github.com/iloveitaly/spree_notification_banner'

  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 1.1'

  s.add_development_dependency 'capybara', '~> 1.1'
  s.add_development_dependency 'factory_girl_rails', '~> 1.7.0'
  s.add_development_dependency 'rspec-rails', '2.12.0'
  s.add_development_dependency 'sqlite3'
end
