# frozen_string_literal: true

require 'test_helper'

class EmojiFlagTest < Minitest::Test
  def test_constructor
    assert_equal true, EmojiFlag.respond_to?(:new)
  end

  def test_invalid_code_returns_empty_string
    assert_equal '', EmojiFlag.new('')
    assert_equal '', EmojiFlag.new('derp')
  end

  def test_valid_code_returns_emoji
    assert_equal '🇳🇱', EmojiFlag.new('nl')
    assert_equal '🇸🇪', EmojiFlag.new('SE')
  end

  def test_symbol_code_returns_emoji
    assert_equal '🇩🇪', EmojiFlag.new(:de)
  end
end
