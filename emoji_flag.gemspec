require './lib/emoji_flag/version'

Gem::Specification.new do |s|
  s.name        = 'emoji_flag'
  s.version     = EmojiFlag::VERSION
  s.license     = 'MIT'
  s.authors     = ['Richard Venneman']
  s.email       = 'richardvenneman@me.com'
  s.homepage    = 'https://github.com/richardvenneman/emoji_flag'
  s.summary     = 'Emoji country flags for language codes.'
  s.description = 'Returns the emoji flag for an ISO 639-1 language code or LCID.'

  s.files       = `git ls-files`.split("\n")
  s.test_files  = Dir['test/**/*']

  s.add_development_dependency 'rake', '~> 13.0'
  s.add_development_dependency 'guard', '~> 2.14'
  s.add_development_dependency 'guard-minitest', '~> 2.4'
  s.add_development_dependency 'simplecov', '~> 0.16'
end
