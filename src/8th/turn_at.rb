load("~/info_science/8th/figure.rb")
load("~/info_science/8th/oo_line.rb")
load("~/info_science/8th/oo_circle.rb")

include(Math)

def turning_figure()
  f1 = Line.new(Point.new(0,0),Point.new(99,99))
  f2 = Circle.new(Point.new(50,50),25)
  a  = make2d(100,100)
  for i in 0..10
    f1.draw(a)
    f2.draw(a)
    f1.turn_at(Point.new(100,100),  PI/40)
    f2.turn_at(Point.new(100,100), -PI/40)
  end
  show(a)
end