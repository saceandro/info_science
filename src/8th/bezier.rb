load("./line.rb")

def bezier_draw(p0,c,p1,a)
  n = 10
  prev = p0
  for i in 1..n
    t = i*1.0/n
    q0 = point_interpolate(p0, c,  t)
    q1 = point_interpolate(c,  p1, t)
    r  = point_interpolate(q0, q1, t)
    line_draw(prev, r, a)
    prev = r
  end
end

def bezier_draw3(p0,c0,c1,p1,a)
  n = 10
  prev = p0
  for i in 1..n
    t = i*1.0/n
    q0 = point_interpolate(p0, c0, t)
    q1 = point_interpolate(c0, c1, t)
    q2 = point_interpolate(c1, p1, t)
    r0 = point_interpolate(q0, q1, t)
    r1 = point_interpolate(q1, q2, t)
    s  = point_interpolate(r0, r1, t)
    line_draw(prev, s, a)
    prev = s
  end
end
