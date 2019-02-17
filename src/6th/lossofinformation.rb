# simulate 32 bit floating point representation
def coerce32(f)
  [f].pack("f").unpack("f")[0]
end

def sum(digits)
  n=10**digits
  sum = 0.0
  d = coerce32(1.0/n)
  for i in 1..n
    sum = coerce32(sum + d)
  end
  sum
end
