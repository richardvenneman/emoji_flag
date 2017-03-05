require './lib/emoji_flag/version'

Gem::Specification.new do |s|
  s.name        = 'emoji_flag'
  s.version     = EmojiFlag::VERSION
  s.authors     = ['Richard Venneman']
  s.email       = 'richardvenneman@me.com'
  s.homepage    = 'https://github.com/richardvenneman/emoji_flag'
  s.summary     = 'Emoji country flags for language codes.'
  s.description = 'Returns the emoji flag representation of a ISO 639-1 language code.'

  s.files       = `git ls-files`.split("\n")
  s.test_files  = Dir['test/**/*']
end
