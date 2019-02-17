load("~/info_science/8th/line.rb")
load("~/info_science/8th/make2d.rb")
include(Math)

def rotate(p,theta)
  point_make(cos(theta)*(p.x) - sin(theta)*(p.y), sin(theta)*(p.x) + cos(theta)*(p.y))
end

def circle_draw(p,r,a)
  n = 50
  c = point_make(r,0)
  prev = c
  for i in 1..n
    theta = 2*PI*i/n
    q = rotate(c,theta)
    p0 = point_add(p,prev)
    p1 = point_add(p,q)
    line_draw(p0,p1,a)
    prev = q
  end
end
