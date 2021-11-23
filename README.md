# Hws::Resources

We define resource as an independent financial entity that can be used to represent any physical or virtual component of value. A resource can be stored or used as a medium of exchange to create any use case in centralized and decentralized finance. This library can be used to programmatically define and manage resources.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'hws-resources'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install hws-resource

## Usage

### Create a resource

```ruby
Hws::Resources::Models::Resource.create(name: "hypto_coin", schema: {"type": "integer", "multipleOf" => 0.001})

=> #<Hws::Resources::Models::Resource id: "99dbf504-ffc4-46d3-aea1-802f91ebd0b0", name: "hypto_coin", description: nil, resource_type: "fungible_connected", schema: {"type"=>"integer", "multipleOf"=>0.001}, created_at: "2021-11-25 13:46:27", updated_at: "2021-11-25 13:46:27">
```

### Update a resource

Schema is marked a read_only and cannot be updated. Only the name and description of the resource can be updated

```ruby
Hws::Resources::Models::Resource
    .find_by(id: "99dbf504-ffc4-46d3-aea1-802f91ebd0b0")
    .update!(name: 'Hypto Duper Coin', description: 'Sample primitive financial resource')
=> true
```
### Delete a resource

```ruby
Hws::Resources::Models::Resource
    .find_by(id: "99dbf504-ffc4-46d3-aea1-802f91ebd0b0")
    .delete
=> #<Hws::Resources::Models::Resource id: "99dbf504-ffc4-46d3-aea1-802f91ebd0b0", ...>
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hwslabs/hws-resources-ruby.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
