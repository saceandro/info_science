load("~/info_science/3rd/make2d.rb")

def mcplot(n)
    a = make2d(500,500)
    for i in 1..n
        x = rand() # random number in [0,1)
        y = rand()
        if x*x + y*y < 1.0
            a[y*500][x*500] = 1.0
        else
            a[y*500][x*500] = 0.4
        end
    end
    a
end
