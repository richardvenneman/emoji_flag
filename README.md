# EmojiFlag

A simple gem to get the [emoji flag](http://emojipedia.org/flags/) for an [ISO 639-1 language code](http://www.loc.gov/standards/iso639-2/php/English_list.php) or locale id string (LCID).

[![Build Status](https://travis-ci.org/richardvenneman/emoji_flag.svg?branch=master)](https://travis-ci.org/richardvenneman/emoji_flag)
[![Gem Version](https://badge.fury.io/rb/emoji_flag.svg)](https://badge.fury.io/rb/emoji_flag)
[![Maintainability](https://api.codeclimate.com/v1/badges/a89942c8e3aca31dfd6a/maintainability)](https://codeclimate.com/github/richardvenneman/emoji_flag/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/a89942c8e3aca31dfd6a/test_coverage)](https://codeclimate.com/github/richardvenneman/emoji_flag/test_coverage)

## Usage

```ruby
EmojiFlag.new('nl') # => 🇳🇱
EmojiFlag.new('en') # => 🇬🇧
EmojiFlag.new('nl_BE') # => 🇧🇪
EmojiFlag.new('en_US') # => 🇺🇸
```

Also supports passing in a symbol language code, making it easy to integrate with [Rails' `I18n.available_locales`](http://guides.rubyonrails.org/i18n.html]):

```ruby
EmojiFlag.new(:de) # => 🇩🇪
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'emoji_flag'
```

And then execute:
```bash
$ bundle
```

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
