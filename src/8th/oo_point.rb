include(Math)

class Point
  attr_accessor("x","y")
  
  def initialize(u,v)
    self.x = u
    self.y = v
  end
  
  def scale(s)
    Point.new(self.x * s, self.y * s)
  end
  
  def add(q)
    Point.new(self.x + q.x, self.y + q.y)
  end

  def sub(q)
    self.add(q.scale(-1))
  end
  
  def interpolate(q,t)
    self.scale(1-t).add(q.scale(t))
  end
  
  def rotate(theta)
    Point.new(self.x*cos(theta) - self.y*sin(theta), self.x*sin(theta) + self.y*cos(theta))
  end
  
  def draw(a)
    if 0 <= self.y+0.5 && self.y+0.5 < a.length() && 0 <= self.x+0.5 && self.x+0.5 < a[0].length()
      a[self.y+0.5][self.x+0.5] = 1
    end
  end

end
