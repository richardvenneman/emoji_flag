require 'simplecov'
SimpleCov.start do
  add_group 'Libraries', 'lib'
end

# Source files
require './lib/emoji_flag'

# Framework
require 'minitest/autorun'
