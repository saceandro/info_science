include(Math)

def semilog1
  f1 = open("align_rec_time_randomlength.dat","r")
  a = f1.readlines
  len = []
  logtime = []
  for i in 0..a.length()-1
    b = a[i].split
    len << b[2]
    t = log10(b[3])
    logtime << t
  end
  f1.close
  f2 = open("align_rec_time_randomlength_log.dat","w")
  for i in 0..len.length()-1
    f2.puts sprintf("%f\t%f\n",len[i],logtime[i])
  end
  f2.close
end

def semilog2
  f1 = open("compare_align.dat","r")
  a = f1.readlines
  len = []
  logtime = []
  for i in 0..a.length()-1
    b = a[i].split
    len << b[0]
    t = log10(b[1])
    logtime << t
  end
  f1.close
  f2 = open("compare_align_log.dat","w")
  for i in 0..len.length()-1
    f2.puts sprintf("%f\t%f\n",len[i],logtime[i])
  end
  f2.close
end

def semilog3
  f1 = open("align_rec_cal_randomlength.dat","r")
  a = f1.readlines
  len = []
  logtime = []
  for i in 0..a.length()-1
    b = a[i].split
    len << b[2]
    t = log10(b[3])
    logtime << t
  end
  f1.close
  f2 = open("align_rec_cal_randomlength_log.dat","w")
  for i in 0..len.length()-1
    f2.puts sprintf("%f\t%f\n",len[i],logtime[i])
  end
  f2.close
end

def semilog4
  f1 = open("align_rec_cal.dat","r")
  a = f1.readlines
  len = []
  logtime = []
  for i in 0..a.length()-1
    b = a[i].split
    len << b[0]
    t = log10(b[1])
    logtime << t
  end
  f1.close
  f2 = open("align_rec_cal_log.dat","w")
  for i in 0..len.length()-1
    f2.puts sprintf("%i\t%f\n",len[i],logtime[i])
  end
  f2.close
end
