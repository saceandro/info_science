load("~/info_science/8th/oo_line.rb")

class Bezier < Line
  attr_accessor("p0", "c", "p1")

  def initialize(q,r,s)
    super(q,s)
    self.c = r
  end

  def draw(a)
    n = 10
    prev = self.p0
    for i in 1..n
      t = i*1.0/n
      q0 = self.p0.interpolate(self.c, t) #self.cでは？
      q1 = self.c. interpolate(self.p1,t) #self.p1では？
      r  = q0.interpolate(q1,t)
      Line.new(prev, r).draw(a)
      prev = r
    end
  end

  def turn(theta)
    super(theta)
    self.c = self.c.rotate(theta)
  end

  def move(p)
    super(p)
    self.c = self.c.add(p)
  end
end