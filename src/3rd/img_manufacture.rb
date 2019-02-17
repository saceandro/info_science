load("./make2d.rb")

def brighter(img)
  h = img.length()
  w = img[0].length()
  a = make2d(h,w)
  for y in 0..(h-1)
    for x in 0..(w-1)
      a[y][x] = (img[y][x] + 1)*0.5
    end
  end
  a
end

def blend(img1,img2)
  h = img1.length()
  w = img1[0].length()
  a = make2d(h,w)
  for y in 0..(h-1)
    for x in 0..(w-1)
      a[y][x] = (img1[y][x] + img2[y][x])*0.5
    end
  end
  a
end

  
