# SchemePlistGenerator

Generates the LSApplicationQueriesSchemes list for iOS, based on an array of schemes.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'scheme_plist_generator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install scheme_plist_generator

## Usage

```ruby
SchemePlistGenerator.generate(['scheme1', 'scheme2'])
#  => "<key>LSApplicationQueriesSchemes</key>
#     <array>
#       <string>scheme1</string>
#       <string>scheme2</string>
#     </array>"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/scheme_plist_generator.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
