def split_array(array, array_size)
  index = 0
  counter = 0

  split_array = []

  while index < array.length do
    new_split = []

    while counter < array_size do
      new_split << array[index]
      counter += 1
      index += 1
    end

    split_array << new_split
    counter = 0
  end

  return split_array
end

result = split_array([0,1,2,3,4,5],2)

p result