# encoding: utf-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'synergy_simple_comments'
  s.version     = '0.1'
  s.summary     = 'Отзывы клиентов магазина (добавляет вкладку "Отзывы" в администраторской части)'
  s.description = 'Отзывы клиентов магазина (добавляет вкладку "Отзывы" в администраторской части)'
  s.required_ruby_version = '>= 1.8.7'

   s.author            = 'PitOn'
   s.email             = 'garik.piton@gmail.com'
   s.homepage          = 'https://github.com/GarPit/synergy_simple_comments'
   s.rubyforge_project = 'synergy_simple_comments'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency('spree_core', '>= 0.60.1')
end
