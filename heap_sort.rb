def heap_sort(array)  
  n = array.size  
  a = [nil] + array             # heap root [0]=>[1]  
  (n / 2).downto(1) do |i|  
    down_heap(a, i, n)  
  end  
  while n > 1  
    a[1], a[n] = a[n], a[1]  
    n -= 1  
    down_heap(a, 1, n)  
  end  
  a.drop(1)                     # heap root [1]=>[0]  
end  
  
def down_heap(a, parent, limit)  
  wk = a[parent]  
  while (child = 2 * parent) <= limit  
    child += 1  if child < limit and a[child] < a[child + 1]  
    break  if wk >= a[child]  
    a[parent] = a[child]  
    parent = child  
  end  
  a[parent] = wk  
end  
  
a = [35, -8, 11, 1, 68, 0, 3]  
p heap_sort(a)    #=> [-8, 0, 1, 3, 11, 35, 68]  
