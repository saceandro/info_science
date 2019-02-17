load("~/info_science/8th/line.rb")

class Circle < Figure
  attr_accessor("center","radius")

  def initialize(p,r)
    self.center = p
    self.radius = r
  end
  
  def draw(a)
    n = 50
    theta = 2*PI/n
    p0 = Point.new(self.radius,0)
    p1 = p0.rotate(theta)
    l = Line.new(p0,p1)
    for i in 1..n
      l.slide(self.center).draw(a) # class Line に、method slide(p)を追加
      l.turn(theta)
    end
  end
  
  def turn(theta)
    p = self.center.rotate(theta)
  end

  def move(p)
    self.center = self.center.add(p)
  end 
end