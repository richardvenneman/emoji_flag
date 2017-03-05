# frozen_string_literal: true

require 'emoji_flag/defaults'

module EmojiFlag
  OFFSET = 127_397
  COUNTRY_CODE_RE = /^[A-Z]{2}$/

  def self.new(input)
    locale = input.to_s
    return '' if locale.nil? || locale.size.zero?

    code = code_for_locale(locale)

    code.codepoints.collect { |codepoint| codepoint + OFFSET }.pack('U*')
  end

  def self.code_for_locale(locale)
    split = locale.upcase.split(/-|_/)
    lang = split.shift
    code = split.pop
    code = DEFAULTS[lang.downcase.to_sym] unless COUNTRY_CODE_RE.match(code)

    code || ''
  end
end
