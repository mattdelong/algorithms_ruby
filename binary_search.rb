def binary_search(array, key, low=0, high=array.size-1)  
  return -1 if low > high  
  mid = (low + high) / 2  
  return mid if array[mid]==key  
  if array[mid] > key  
    high = mid - 1  
  else  
    low = mid + 1  
  end  
  binary_search(array, key, low, high)   
end  
  
ary = [1,2,3,4,5,6,7,8,9]  
puts binary_search(ary, 8)      #=> 7  
