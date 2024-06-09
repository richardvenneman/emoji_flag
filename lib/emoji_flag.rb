# frozen_string_literal: true

require 'emoji_flag/defaults'

module EmojiFlag
  OFFSET = 127_397
  COUNTRY_CODE_RE = /^[A-Z]{2}$/
  @cache = {}

  def self.new(input)
    locale = normalize_locale(input.to_s)
    return @cache[locale] if @cache.key?(locale)

    raise ArgumentError, "Locale cannot be nil or empty" if locale.nil? || locale.size.zero?

    code = code_for_locale(locale)

    raise ArgumentError, "No flag found for locale: #{locale}" if code.empty?

    flag = code.codepoints.collect { |codepoint| codepoint + OFFSET }.pack('U*')
    @cache[locale] = flag
    flag
  end

  def self.normalize_locale(locale)
    locale.strip.tr(' ', '_').tr('-', '_').downcase
  end

  def self.code_for_locale(locale)
    split = locale.upcase.split(/-|_/)
    lang = split.shift
    code = split.pop
    code = DEFAULTS[lang.downcase.to_sym] unless COUNTRY_CODE_RE.match(code)

    code || ''
  end
end
