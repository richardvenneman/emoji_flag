# Coverage
if ENV['CODECLIMATE_REPO_TOKEN']
  require 'codeclimate-test-reporter'
  CodeClimate::TestReporter.start
elsif ENV['COVERAGE']
  require 'simplecov'
  SimpleCov.start do
    add_group 'Libraries', 'lib'
  end
end

# Source files
require './lib/emoji_flag'

# Framework
require 'minitest/autorun'
