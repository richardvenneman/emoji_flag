# frozen_string_literal: true

require 'test_helper'

class EmojiFlagTest < Minitest::Test
  def test_constructor
    assert_equal true, EmojiFlag.respond_to?(:new)
  end

  def test_empty_code_returns_empty_string
    assert_equal '', EmojiFlag.new(nil)
    assert_equal '', EmojiFlag.new('')
  end

  def test_invalid_code_returns_empty_string
    assert_equal '', EmojiFlag.new('derp')
  end

  def test_iso_3166_1_code_for_locale
    assert_equal 'NL', EmojiFlag.code_for_locale('nl')
    assert_equal 'GB', EmojiFlag.code_for_locale('en')
  end

  def test_lcid_code_for_locale
    assert_equal 'NL', EmojiFlag.code_for_locale('nl_NL')
    assert_equal 'GB', EmojiFlag.code_for_locale('en_GB')
    assert_equal 'US', EmojiFlag.code_for_locale('en_US')
  end

  def test_valid_iso_3166_1_emoji
    assert_equal '🇳🇱', EmojiFlag.new('nl')
    assert_equal '🇸🇪', EmojiFlag.new('SV')
  end

  def test_valid_iso_3166_1_symbol_emoji
    assert_equal '🇩🇪', EmojiFlag.new(:de)
    assert_equal '🇯🇵', EmojiFlag.new(:JA)
  end

  def test_valid_lcid_emoji
    assert_equal '🇳🇱', EmojiFlag.new('nl_NL')
    assert_equal '🇧🇪', EmojiFlag.new('nl_BE')
    assert_equal '🇬🇧', EmojiFlag.new('en_GB')
  end

  def test_valid_lcid_symbol_emoji
    assert_equal '🇺🇸', EmojiFlag.new(:en_US)
  end
end
