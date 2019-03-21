# JsonApiSchema::Source

This is the [JSON:API JSON Schema](http://jsonapi.org/schema) packaged as a rubygem.
Use this to validate a HTTP response body according to [JSON:API](http://jsonapi.org).

## Installation

Add this line to your application's Gemfile:

```ruby
group :test, :development do
  gem 'json_api_schema-source', source: 'https://gems.ivx.cloud'
end
```

And then execute:

    $ bundle

## Usage

```ruby
require 'json'
require 'json_api_schema/source'

schema = JSON.parse(File.read(JsonApiSchema::Source.schema_path))
```

Validate your response using [json_schemer](http://rubygems.org/gems/json_schemer) (not part of this gem):

```ruby
require 'json_schemer'

schemer = JSONSchemer.schema(schema)
schemer.valid?(JSON.parse(last_response.body))
# => true/false
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ivx/json_api_schema-source.
