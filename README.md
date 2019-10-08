# AtomicCounter

A simple thread safe counter for Ruby.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'atomic_counter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install atomic_counter

## Usage

```ruby
counter = AtomicCounter.new
counter.increment

puts counter.reset # => 1
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ttasanen/atomic_counter.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
