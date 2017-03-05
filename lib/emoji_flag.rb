# frozen_string_literal: true

module EmojiFlag
  OFFSET = 127_397
  COUNTRY_CODE_RE = /^[A-Z]{2}$/

  def self.new(input)
    code = input.to_s.upcase
    return '' unless COUNTRY_CODE_RE.match(code)

    code.codepoints.collect { |codepoint| codepoint + OFFSET }.pack('U*')
  end
end
