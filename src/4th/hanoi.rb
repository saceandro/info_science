def hanoi(n, from, to, buf)
  if n == 0
    ""
  else
    hanoi(n-1, from, buf, to) + "from " + from + " to " + to + "; " + hanoi(n-1, buf, to, from)
  end
end

def hanoi_times(n)
  if n == 0
    0
  else
    2*hanoi_times(n-1) + 1
  end
end

#各移動段階における、ハノイの塔の状態をすべて出力する関数hanoiarray(n)
#円盤を、小さい方から順に1,2,3,...,nとする。
#例えば、n=3のときは、
#[[1,2,3],[],[]]
#[[2,3],[1],[]]
#[[3],[1],[2]]
#[[3],[],[1,2]]
#[[],[3],[1,2]]
#[[1],[3],[2]]
#[[1],[2,3],[]]
#[[],[1,2,3],[]]
#と出力される。
def sub_hanoiarray(n, from, to, buf)
  if n == 0
    []
  else
    sub_hanoiarray(n-1, from, buf, to) + [from,to] + sub_hanoiarray(n-1, buf, to, from)
  end
end

def hanoiarray(n)
  a = Array.new(n)
  for i in 0..(n-1)
    a[i] = i + 1
  end
  b = [a,[],[]]
  p b
  c = sub_hanoiarray(n,0,1,2)
  l = c.length()/2
  for i in 0..(l-1)
    b[c[2*i+1]] = [b[c[2*i]][0]] + b[c[2*i+1]]
    b[c[2*i]] = b[c[2*i]][1..(b[c[2*i]].length()-1)]
    p b
  end
end

