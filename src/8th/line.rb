load("~/info_science/8th/point.rb")
load("~/info_science/3rd/max.rb")
load("~/info_science/3rd/abs.rb")

def line_draw(p0,p1,a)
  n = max(abs(p1.x - p0.x), abs(p1.y - p0.y))
  for i in 0..n
    point_draw(point_interpolate(p0,p1,i*1.0/n),a)
  end
end
