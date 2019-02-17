class Figure
  def turn_at(p,theta)
    self.move(p.scale(-1)) #-pだけ平行移動
    self.turn(theta)
    self.move(p)
  end
end