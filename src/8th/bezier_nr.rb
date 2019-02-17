def point_interpolate_nr(x0,x1,t)
  x0*(1-t) + x1*t
end

def point_draw_nr(x,y,a)
  if 0 <= y+0.5 && y+0.5 < a.length() && 0 <= x+0.5 && x+0.5 < a[0].length()
    a[y+0.5][x+0.5] = 1
  end
end

def line_draw_nr(x0,y0,x1,y1,a)
  n = max(abs(x1 - x0), abs(y1 - y0))
  for i in 0..n
    x = point_interpolate_nr(x0,x1,i*1.0/n)
    y = point_interpolate_nr(y0,y1,i*1.0/n)
    point_draw_nr(x,y,a)
  end
end

def bezier_nr(a,x0,y0,xc,yc,x1,y1)
  n = 10
  x_prev = x0
  y_prev = y0
  for i in 1..n
    t = i*1.0/n
    xq0 = point_interpolate_nr(x0,  xc,  t)
    yq0 = point_interpolate_nr(y0,  yc,  t)
    xq1 = point_interpolate_nr(xc,  x1,  t)
    yq1 = point_interpolate_nr(yc,  y1,  t)
    xr  = point_interpolate_nr(xq0, xq1, t)
    yr  = point_interpolate_nr(yq0, yq1, t)
    line_draw_nr(x_prev, y_prev, xr, yr, a)
    x_prev = xr
    y_prev = yr
  end
end
