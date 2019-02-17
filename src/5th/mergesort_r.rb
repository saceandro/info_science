load("./mergesort.rb")
load("~/info_science/3rd/make1d.rb")
include(Math)

def merge_rec(a,l,r)
  if l == r
    [a[l]]
  else
    m = (l+r)/2
    merge(merge_rec(a,l,m),merge_rec(a,m+1,r))
  end
end

# mergesort_r(a)
# n = a.length() としたとき、計算量は、O(nlogn)。
# 繰り返しで書いたmergesort(a)と、計算量は同じ。
def mergesort_r(a)
  merge_rec(a,0,a.length()-1)
end


# merge(a,b)を、再帰的に書いた関数 merge_r(a,b)
# ただし、配列を可変長で扱っているため処理が遅いので、
# merge_rec(a,l,r)の定義には用いていない。
def merge_r(a,b)
  la = a.length()
  lb = b.length()
  if la > 0 && lb > 0
    if a[0] < b[0]
      [a[0]] + merge_r(a[1..(la-1)],b)
    else
      [b[0]] + merge_r(a,b[1..(lb-1)])
    end
  else
    if la == 0
      b[0..(lb-1)]
    else  # lb == 0
      a[0..(la-1)]
    end
  end
end


# quicksort
#
# swap(a,i,j):
# 配列aのi番目の要素とj番目の要素を入れ替える関数
#
# pivot(a,i,j):
# 配列aのi番目からj番目までの要素のうち、i番目から順に見て、
# 最初に得られた２つの異なる値のうち、大きい方をとってpivot要素とし、
# その要素番号を返す関数である。
# 但し、配列aのi番目からj番目の要素までがすべて等しい場合、-1を返す。
# 計算量O(j-i)
#
# part(a,i,j,s):
# pivot要素の値sをしきい値として、配列aのi番目からj番目に向かってしきい値以上の要素を、
# 配列aのj番目からi番目に向かってしきい値未満の要素を探し、これらの要素を入れ替える。
# これを、双方の検索が交差するまで繰り返す。
# 交差したら、i番目からj番目への検索ラインが最終的に到達した場所(l)を返す。
# このとき、配列aのi番目から(l-1)番目にはs未満の数が、
# l番目からj番目にはs以上の数が集まっている。
# 計算量O(j-i)
#
# sub_quicksort(a,i,j)
# 以上の関数を組み合わせ、配列aのi番目からj番目までを再帰的にソートする。
# i = j 即ち部分配列の要素が１つしかなくなったら、もう並べ替える必要がないので、何もしない。
# i != j ならばpivot要素を求め、
# (-1が返されたら、その部分配列はもう並べ替える必要がないので、何もしない。)
# part(a,i,j,a[pivot(a,i,j)])によって、i~j番目をpivot要素の値との大小で二分し、
# 二分したそれぞれを再帰的にソートする。
#
# quicksort(a)
# sub_quicksort(a,0,a.length())を行い、配列a全体をソートする。
# pivot(a,i,j)とpart(a,i,j,s)はともに計算量O(j-i)、
# つまりデータ数に比例した計算量がかかる。
# 最良の場合、partで、データの分割が効率よく、半分になるように行われれば、
# 再帰の深さはlog(n)/log(2)で、各段階でのデータ数はすべてnだから、
# 計算量はO(nlogn)になる。(最良計算量)
# しかし、配列aが降順に並んでいた場合、計算量は最も大きくなり、
# partでの分割は、1つの要素と、残りの要素に分けるという、最も非効率な分割となってしまう。
# よって、再帰の深さはn、各段階でのデータ数もすべてnだから、
# 計算量は、O(n^2)になる。(最悪計算量)
# データの並びがランダムな場合、平均計算量はO(nlogn)で、mergesortと同じオーダーであるが、
# 一般にはmergesortよりも高速にソートを行うことができる。

def swap(a,i,j)
  v = a[i]
  a[i] = a[j]
  a[j] = v
end

def pivot(a,i,j)
  k = i + 1
  while k <= j && a[i] == a[k]
    k = k + 1
  end
  if k > j
    -1
  else
    if a[i] < a[k]
      k
    else
      i
    end
  end
end

def part(a,i,j,s)
  l = i
  r = j
  while l <= r
    while l <= j && a[l] < s
      l = l + 1
    end
    while i <= r && s <= a[r]
      r = r - 1
    end
    if l > r
      break
    end
    swap(a,l,r)
    l = l + 1
    r = r - 1
  end
  l
end

def sub_quicksort(a,i,j)
  if i != j
    p = pivot(a,i,j)
    if p != -1
      l = part(a,i,j,a[p])
      sub_quicksort(a,i,l-1)
      sub_quicksort(a,l,j)
    end
  end
end

def quicksort(a)
  sub_quicksort(a,0,a.length()-1)
  a
end


# 基数ソート（ソートする配列は非負整数列であるとする。）
# max :配列中で最大の数
# m :基数
# m進数でのmaxを、max_(m)のように表すことにする。
# max_(m)の桁数を求め、それが(k+1)桁であったとする。
# まず、m×0の二次元配列bをつくる。
# 次に、aの各要素a[j]_(m)の下位1桁目を見る。それをdとして、
# bのd行目の最後にa[j]を追加する。(つまり、m進数1桁目でソートする。)
# すべて追加し終えたら、
# 新たにm×0の配列cを作る。                   ...(*)
# bの配列を見て、
#    1. bの行数jの小さい順
#    2. bの列数pの小さい順
# 1,2の優先順位で、配列bを見てゆき、各要素b[j][p]_(m)の次の桁を見る。
# それをdとして、cのd行目の最後にb[j][p]を追加する。
# (つまり、続けて次の桁でソートする。)
# b = c として、bをcで置き換える。            ...(**)
# (*)から(**)までを、k回繰り返せば、
# 配列bには、1,2の優先順位で、aの要素がソートされている。
# aのどの要素a[j]も(k+2)桁以上はないので、a[j]_(m)の(k+2)桁目は、全て0である。
# よって、(*)から(**)をもう一度繰り返せば、
# bの0行目には、aの全ての要素がソートされて並ぶことになる。
# 従って、最後にb[0]を返せばよい。

# m×0の二次元配列を作る関数make2d_nil(m)
def make2d_nil(m)
  a = Array.new(m)
  for i in 0..(m-1)
    a[i] = []
  end
  a
end

# 配列aの基数ソートを行う関数radixsort(a,max,m)
# 計算量は、O(kn) = O(n*log(max)/log(m)) ただし基数は、2 <= m <= max
# maxが小さい非負整数列に対しては、高速にソートを行える。
# maxが大きければ基数を大きく設定することで計算量を少なくできるが、
# あまり大きくするとメモリを消費するので、基数の大きさには限界がある。
def radixsort(a,max,m)
  n = a.length()
  x = log(max)/log(m)
  k = x - (x % 1)     # m進数で、maxは(k+1)桁である。
  b = make2d_nil(m)
  for j in 0..(a.length()-1)
    d = a[j] % m      # a[j]_(m)の、下位1桁目は、d
    b[d].push(a[j])
  end
  for l in 1..(k+1)
    q = make1d(m)
    c = make2d_nil(m)
    for j in 0..(m-1)
      for p in 0..(b[j].length()-1)
        d = (b[j][p] / m**l) % m # b[j][p]_(m)の、下位から(l+1)桁目は、d
        c[d].push(b[j][p])
      end
    end
    b = c
  end
  b[0]
end
