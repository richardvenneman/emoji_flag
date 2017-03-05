# frozen_string_literal: true

require 'test_helper'

class EmojiFlagTest < Minitest::Test
  def test_constructor
    assert_equal true, EmojiFlag.new('test')
  end
end
