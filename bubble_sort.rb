def bubble_sort(arr)
  sortCount = 0

  sortedArr = arr.each_with_index do |item, idx| 
    next if idx == arr.length - 1

    item1 = item
    item2 = arr[idx + 1]

    if item2 < item1
      arr[idx] = item2
      arr[idx + 1] = item1
      sortCount += 1
    end
    arr
  end

  p sortedArr

  if sortCount == 0
    p sortedArr
  else
    sortCount = 0
    bubble_sort(sortedArr)
  end
end

bubble_sort([0,2,2,3,4,78])
bubble_sort([4,3,78,2,0,2,39,11,21,13,77,97,51])