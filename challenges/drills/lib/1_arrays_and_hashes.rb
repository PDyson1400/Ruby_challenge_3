# These exercises will initially recap basic hash and array methods
# Then they'll go a bit deeper on both topics
# Some exercises will require your knowledge of both arrays and hashes

# Arrays I

# fourth_element
# takes one array as an arg
# returns the fourth element
def fourth_element(arr)
    return arr[3]
end
# average
# takes an array of numbers
# returns the average (the mean)
def average(arr)
    sum = [0, 0]
    arr.map{ |num|
        sum[0] += num
        sum[1] += 1
    }
    return sum[0]/sum[1]
end
# lowest_squared
# takes an array of numbers
# returns the lowest number squared
def lowest_squared(arr)
    lowest = arr[0]
    arr.map {|num| 
    if num < lowest
        lowest = num
    end}
    return lowest ** 2
end
# highest_squared
# takes an array of numbers
# returns the highest number squared
def highest_squared(arr)
    greatest = arr[0]
    arr.map {|num| 
    if num > greatest
        greatest = num
    end}
    return greatest ** 2
end
# Hashes I

# values_summed
# takes a hash where the values are numbers
# returns the total of all the values
def values_summed(hash)
    arr = hash.values
    sum = 0
    arr.map{|num| sum += num}
    return sum
end
# first_two_keys
# takes a hash
# returns the first two keys
def first_two_keys(hash)
    arr = hash.keys
    return arr[0..1]
end
# first_two_values
# takes a hash
# returns the first two values
def first_two_values(hash)
    arr = hash.values
    return arr[0..1]
end
# Arrays II

# starts_with_a
# takes one array as an arg
# returns only elements starting with 'a'
def starts_with_a(arr)
    return arr.filter{|word| word[0] == "a"}
end
# starts_with_a_vowel
# takes an array as an arg
# returns only the elements that start with a vowel
def starts_with_a_vowel(arr)
    return arr.filter{|word| word[0] =~ /[aeiou]/}
end
# reverse_each_element
# takes an array as an arg
# reverses each element
# E.g. when the arg is ['one', 'two']
# it returns ['eno', 'owt']
def reverse_each_element(arr)
    return arr.each{|word| word.reverse!}
end
# sort_by_last_letter
# takes one array as an arg
# returns the array, sorted by the last letter
def sort_by_last_letter(arr)
    return arr.sort {|a, b| a[a.length - 1] <=> b[b.length-1]}
end
# greater_than_5
# takes one array as an arg
# returns only numbers greater than 5
def greater_than_5(arr)
    return arr.filter{|num| num > 5}
end
# greater_than
# takes one array and one number as args
# returns only the elements that are greater than the number provided
def greater_than(arr, num)
    return arr.filter{|enter| enter > num}
end
# less_than
# takes one array and one number as args
# returns only the elements that are less than the number provided
def less_than(arr, num)
    return arr.filter{|enter| enter < num}
end
# words_shorter_than
# takes one array and one number as args
# returns only the elements than have fewer characters than the number provided
def words_shorter_than(arr, num)
    return arr.filter{|word| word.length < num}
end
# all_above?
# takes an array and a number as args
# returns true if all elements are greater than the number provided
def all_above?(arr, num)
    return arr.all? {|enter| enter > num}
end
# all_below?
# takes an array and a number as args
# returns true if all elements are less than the number provided
def all_below?(arr, num)
    return arr.all? {|enter| enter < num}
end
# multiply_each_by
# takes one array and one number as args
# returns a new array with each element multiplied by the number provided
def multiply_each_by(arr, num)
    return arr.map {|enter| enter * num}
end
# Hashes II

# where_value_below
# takes a hash and a number as args
# returns key value pairs where the value is less than the number provided
def where_value_below(hash, num)
    return hash.filter {|key, value| value < num}
end
# where_key_starts_with
# takes a hash and a letter as args
# returns key value pairs where the key starts with the letter provided
def where_key_starts_with(hash, letter)
    return hash.filter {|key, value| key[0] == letter}
end
# add_key_value_pair
# takes a hash, a key and a value as args
# returns a the hash with the new key and value added
def add_key_value_pair(hash, key, value)
    hash[key] = value
    return hash
end
# sort_by_key
# takes a hash
# sorts key-value pairs by key
def sort_by_key(hash)
    hash.sort_by{|key, value| key}
    return hash
end
# sort_by_value
# takes a hash
# sorts key-value pairs by value
def sort_by_value(hash)
    hash.sort_by{|key, value| value}
    return hash
end