#loop through each item in the array. Record the index of the largest differences.


def stock_picker (array)
  dis = array.each_with_index.reduce([0, 0, 0]) do |accum, (price, index)|
    i = index
    highest = [0, 0, 0]
    results = [0, 0, 0]
    while i <= array.length - 2
      current = [(array[i + 1] - price), index, (i+1)]
      if current[0] > highest[0]
        highest = current
      end
      results = highest
      i += 1
    end
    results[0] > accum[0] ? results : accum
  end
  p dis.drop(1)
  
  
  # winners = []

  # array.each_with_index.reduce do |accum, (element, index)|

  # end
  # result
end


stock_picker([17,3,6,9,15,8,6,1,10])