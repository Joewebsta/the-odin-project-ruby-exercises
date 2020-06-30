def bubble_sort(arr)
  sortCount = 0

  sortedArr = arr.each_with_index do |num, i| 
    next if i == arr.length - 1

    num1 = num
    num2 = arr[i+1]

    if num2 < num1
      arr[i] = num2
      arr[i+1] = num1
      sortCount += 1
    end
    arr
  end

  if sortCount == 0
    sortedArr
  else
    sortCount = 0
    bubble_sort(sortedArr)
  end
end

p bubble_sort([0,2,2,3,4,78])
p bubble_sort([4,3,78,2,0,2,39,11,21,13,77,97,51])