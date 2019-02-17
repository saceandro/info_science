load("~/info_science/3rd/max.rb")
load("~/info_science/3rd/abs.rb")
load("./make2d.rb")
load("~/info_science/8th/oo_point.rb")

include(Math)

class Line < Figure
  attr_accessor("p0","p1")
  
  def initialize(q,r)
    self.p0 = q
    self.p1 = r
  end

  def draw(a)
    n = max(abs(self.p1.x - self.p0.x),abs(self.p1.y - self.p0.y))
    for i in 0..n
      p = self.p0.interpolate(self.p1, i*1.0/n)
      p.draw(a)
    end
  end

  def turn(theta)
    self.p0 = self.p0.rotate(theta)
    self.p1 = self.p1.rotate(theta)
  end

  def slide(p) # pだけ平行移動させた新たな直線を作る
    Line.new(self.p0.add(p), self.p1.add(p))
  end

  def move(p)
    self.p0 = self.p0.add(p)
    self.p1 = self.p1.add(p)
  end
end


