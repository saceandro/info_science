def subhanoi(from,to,buf)
  "from " + from + " to " + buf + "; " + "from " + from + " to " + to + "; " + "from " + buf + " to " + to
end

def hanoi_times(n)
  if n == 0
    0
  else
    2*hanoi_times(n-1) + 1
  end
end

def hanoi_array_loop(n)
  a = [[],[],[]]
  for i in 0..(n-1)
    a[0] << i
  end
  p a
  while true
      zero_position = 0
    for i in 0..2
      if a[i].count(0) > 0
        a[0].delete(0)
        if i == 2
          a[0].insert(0,0)
          zero_posision = 0
          break
        else
          a[i+1].insert(0,0)
          zero_position = i + 1
          break
        end
      end
    end
    p a
    if a[1].length() == n || a[2].length() == n
      break
    end
    minimum = n + 1
    min_position = 0
    for i in 0..2
      if i != zero_position
        minimum = a[i].min
        min_position = i
      end
      a[min_position].delete(minimum)
      for i in 0..2
        if i != min_position
          if i != zero_position
            a[i].insert(0,minimum)
          end
        end
      end
      p a
    end
  end
end

  
