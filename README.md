# README

# Array Methods in Ruby

Ruby provides a variety of built-in methods for working with arrays, allowing for simple and efficient manipulation of array data.

## Adding Elements

- `push`/`<<`: Add elements to the end of the array.
- `unshift`: Add elements to the beginning of the array.

```ruby
array = [1, 2, 3]
array.push(4)
array << 5
array.unshift(0)
# Result: [0, 1, 2, 3, 4, 5]
```

## Accessing Elements

- `[]`: Access elements by index.
- `first`/`last`: Get the first or last element of the array.

```ruby
array = ["apple", "banana", "orange"]
puts array[0]   # Output: "apple"
puts array.first   # Output: "apple"
puts array.last   # Output: "orange"
```

## Removing Elements

- `pop`: Remove and return the last element.
- `shift`: Remove and return the first element.
- `delete_at`: Remove element at a specific index.
- `delete`: Remove a specific element.

```ruby
array = [1, 2, 3, 4, 5]
array.pop   # Removes and returns 5
array.shift   # Removes and returns 1
array.delete_at(2)   # Removes element at index 2
array.delete(4)   # Removes element 4
# Result: [2, 3]
```

## Iterating Over Elements

- `each`: Iterate over each element in the array.
- `map`/`collect`: Transform each element of the array.

```ruby
array = [1, 2, 3, 4, 5]
array.each { |num| puts num * 2 }   # Output: 2, 4, 6, 8, 10
new_array = array.map { |num| num * 3 }   # Multiplies each element by 3
```

## Sorting and Reversing

- `sort`: Sort elements in ascending order.
- `reverse`: Reverse the order of elements in the array.

```ruby
array = [3, 1, 5, 2, 4]
sorted_array = array.sort   # Result: [1, 2, 3, 4, 5]
reversed_array = array.reverse   # Result: [4, 2, 5, 1, 3]
```

## Checking and Manipulating

- `include?`: Check if an element exists in the array.
- `empty?`: Check if the array is empty.
- `size`/`length`: Get the number of elements in the array.
- `uniq`: Remove duplicate elements.

```ruby
array = [1, 2, 3, 4, 5]
puts array.include?(3)   # Output: true
puts array.empty?   # Output: false
puts array.size   # Output: 5
array << 3
array.uniq   # Removes duplicates
# Result: [1, 2, 3, 4, 5]
```

These examples demonstrate how to use various array methods in Ruby effectively.

```

