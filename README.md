# EmojiFlag

A simple gem to get the [emoji flag](http://emojipedia.org/flags/) for an [ISO 639-1 language code](http://www.loc.gov/standards/iso639-2/php/English_list.php) or locale id string (LCID).

[![Travis CI status](https://img.shields.io/travis/richardvenneman/emoji_flag.svg?style=flat-square)](https://travis-ci.org/richardvenneman/emoji_flag)
[![RubyGem](https://img.shields.io/gem/v/emoji_flag.svg?style=flat-square)](https://rubygems.org/gems/emoji_flag)
[![Code Climate](https://img.shields.io/codeclimate/github/richardvenneman/emoji_flag.svg?style=flat-square)](https://codeclimate.com/github/richardvenneman/emoji_flag)
[![Code Climate](https://img.shields.io/codeclimate/coverage/github/richardvenneman/emoji_flag.svg?style=flat-square)](https://codeclimate.com/github/richardvenneman/emoji_flag/coverage)

## Usage

```ruby
EmojiFlag.new('nl') # => 🇳🇱
EmojiFlag.new('en') # => 🇬🇧
EmojiFlag.new('nl_BE') # => 🇧🇪
EmojiFlag.new('en_US') # => 🇺🇸
```

Also supports passing in a symbol language code, making it easy to integrate with [http://guides.rubyonrails.org/i18n.html](Rails' `I18n.available_locales`):

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
