numbers =(1..5).to_a
letters = ('a'..'z').to_a
p numbers
p letters

def sequential()
  numbers.each do |number|
    p number
  end

  letters.each do |letter|
    p letter
  end
end

def nested(numbers, letters)
  counter = 0
  numbers.each do |number|
    letters.each do |letter|
      # p [number, letter]
      counter +=1
    end
  end
  p counter
end

def parallel(arr1, values)
  length1 = arr1.length
  length2 = arr2.length
  shorter = length1 < length2 ? length1 : length2 #ternary operation
  # some_boolean ? true_response : false_response
  shorter.times do |index|
    p [arr1[index], arr2[index]]
  end
end

def hash_maker(keys, values)
  empty_hash = {}
  empty_array = []
  length1 = keys.length
  length2 = values.length
  shorter = length1 < length2 ? length1 : length2 #ternary operation
  # some_boolean ? true_response : false_response
  shorter.times do |index|
    empty_hash[keys[index]] = values[index]
    empty_array[index] = [keys[index],values[index]]
  end
  p empty_hash
  p empty_array
  empty_hash
end

def finder(array, target)
  array.each do | element|
    if element == target
      puts "found target %s " % target
      return
    else
      puts "looked for %s, but got %s" % [target, element]
    end
  end
  puts 'didn\'t find jack'
end

# nested(numbers, letters)
# parallel(numbers, letters)
pairs = hash_maker(letters, numbers)
# p letters.shuffle
finder(letters.shuffle, 'j')
