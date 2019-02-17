load("./point.rb")
load("./bezier.rb")
load("./make2d.rb")

def make_points(xy)
  points = make1d(xy.length()/2)
  for i in 0 .. points.length()-1
    points[i] = point_make(xy[2*i], xy[2*i+1])
  end
  points
end

def kana()
  a=make2d(400,400)
  p=make_points([208,70, 163,210, 56,317, 0,264, 
		  0,196, 115,50,  250,53, 353,67, 
		390,149, 412,268, 237,347])
  for i in 0..(p.length()-1)/2-1
    bezier_draw(p[i*2], p[i*2+1], p[i*2+2], a)
  end
  show(a)
end

def kana3()
  a = make2d(400,400)
  p = make_points([325,25, 210,553, -1,361, 0,242, -1,-71, 242,-24, 269,234, 307,448, 390,347, 399,302])
  for i in 0..(p.length()-1)/3 - 1
    bezier_draw3(p[i*3], p[i*3+1], p[i*3+2], p[i*3+3], a)
  end
  show(a)
end
