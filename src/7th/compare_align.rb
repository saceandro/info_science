load("~/info_science/7th/align_rec.rb")
load("~/info_science/7th/align.rb")
require("Benchmark")
include(Math)

def s()
  ["GACGG","GACGGA","GACGGAT","GACGGATT","GACGGATTA","GACGGATTAG"]
end

def t()
  ["GATCGG","GATCGGA","GATCGGAA","GATCGGAAT","GATCGGAATA","GATCGGAATAG"]
end

def compare_align(u,v)
  ff = open("compare_align.dat","w")
  format = "%f\t%.3f\t%.3f\n"
  for i in 0..u.length()-1
    a = u[i]
    b = v[i]
    l = sqrt(a.length() * b.length())
    t0 = Benchmark.measure{ align_rec(a,b) }.total
    t1 = Benchmark.measure{ align(a,b) }.total
    ff.puts sprintf(format, l, t0, t1)
  end
  ff.close
end

def random_dna(n)
  a = ["A","T","G","C"]
  Array.new(n){a[rand(4)]}.join
end

def align_rec_time(n)
  ff = open("align_rec_time.dat","w")
  format = "%i\t%.3f\n"
  for i in 1..n
    a = random_dna(i)
    b = random_dna(i)
    time = Benchmark.measure{ align_rec(a,b) }.total
    ff.puts sprintf(format,i,time)
  end
  ff.close
end

def align_time(n)
  ff = open("align_time.dat","w")
  format = "%i\t%.3f\n"
  for i in 0..n
    m = 2**i
    a = random_dna(m)
    b = random_dna(m)
    time = Benchmark.measure{ align(a,b) }.total
    ff.puts sprintf(format,m,time)
  end
  ff.close
end

def align_rec_time_randomlength(n)
  ff = open("align_rec_time_randomlength.dat","w")
  format = "%i\t%i\t%f\t%.3f\n"
  for i in 0..30
    k = rand(n-5) + 5
    l = rand(n-5) + 5
    m = sqrt(k*l)
    a = random_dna(k)
    b = random_dna(l)
    time = Benchmark.measure{ align_rec(a,b) }.total
    ff.puts sprintf(format,k,l,m,time)
  end
  ff.close
end

def align_time_randomlength(n)
  ff = open("align_time_randomlength.dat","w")
  format = "%i\t%i\t%e\t%.3f\n"
  for i in 0..100
    k = rand(n-5) + 5
    l = rand(n-5) + 5
    m = k*l
    a = random_dna(k)
    b = random_dna(l)
    time = Benchmark.measure{ align(a,b) }.total
    ff.puts sprintf(format,k,l,m,time)
  end
  ff.close
end

def align_rec_time_sameseq(n)
  ff = open("align_rec_time_sameseq.dat","w")
  format = "%i\t%.3f\n"
  for i in 1..n
    a = random_dna(i)
    time = Benchmark.measure{ align_rec(a,a) }.total
    ff.puts sprintf(format,i,time)
  end
  ff.close
end

def align_time_sameseq(n)
  ff = open("align_time_sameseq.dat","w")
  format = "%.15e\t%.3f\n"
  for i in 0..n
    m = 2**i
    a = random_dna(m)
    time = Benchmark.measure{ align(a,a) }.total
    ff.puts sprintf(format,m,time)
  end
  ff.close
end

def align_rec_cal_loop(m,n)
  a = make2d(m+1,n+1)
  for i in 0..m
    a[i][0] = 1
  end
  for j in 0..n
    a[0][j] = 1
  end
  for i in 1..m
    for j in 1..n
      a[i][j] = a[i][j-1] + a[i-1][j] + a[i-1][j-1] + 1
    end
  end
  a
end

def align_rec_cal(n)
  ff = open("align_rec_cal.dat","w")
  a = align_rec_cal_loop(n,n)
  step = 50
  m = n/step
  for i in 0..step
    l = m*i
    ff.puts sprintf("%i\t%.15e\n", l, a[l][l])
  end
  ff.close
end

def align_rec_cal_randomlength(n)
  ff = open("align_rec_cal_randomlength.dat","w")
  a = align_rec_cal_loop(n,n)
  for i in 0..200
    k = rand(n)
    l = rand(n)
    m = sqrt(k*l)
    ff.puts sprintf("%i\t%i\t%f\t%e\n",k,l,m,a[k][l])
  end
  ff.close
end
