# README


# Hashing in Ruby

In Ruby, a hash is a collection of key-value pairs. It allows you to store and retrieve data based on keys rather than indexes. Hashes are denoted by curly braces `{}`.

## Creating a Hash

You can create a hash by listing key-value pairs separated by `=>` or by using a colon `:`.

```ruby
# Using => syntax
my_hash = { "name" => "John", "age" => 30 }

# Using colon syntax
my_hash = { name: "John", age: 30 }
```

## Accessing Elements

You can access the value associated with a key using square brackets `[]`.

```ruby
my_hash = { "name" => "John", "age" => 30 }
puts my_hash["name"]   # Output: John
```

## Modifying a Hash

You can add, update, or remove key-value pairs from a hash.

```ruby
my_hash = { "name" => "John", "age" => 30 }
my_hash["city"] = "New York"   # Adding a new key-value pair
my_hash["age"] = 31   # Updating the value of an existing key
my_hash.delete("age")   # Removing a key-value pair
```

## Iterating Over a Hash

You can iterate over a hash using methods like `each`.

```ruby
my_hash = { "name" => "John", "age" => 30 }
my_hash.each { |key, value| puts "#{key}: #{value}" }
# Output:
# name: John
# age: 30
```

## Checking for Key Existence

You can check if a hash contains a specific key using the `key?` method.

```ruby
my_hash = { "name" => "John", "age" => 30 }
puts my_hash.key?("name")   # Output: true
```



