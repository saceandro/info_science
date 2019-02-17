#!/usr/bin/env ruby

$sample_image__ = [ [0,1,0,1], [1,0,1,0], [0,1,0,1], [1,0,1,0] ]

$sample_array__ = [ 1,2,3,4 ]

$testunits__ = 
    [
   ["image_average.rb",
    [["Ex2.2", "image_average9", "float", 0.4444444444, $sample_image__, 1, 1],
     ["Ex2.3 a", "sum3", "float", 6, $sample_array__, 1],
     ["Ex2.3 b", "array_average3", "float", 2, $sample_array__, 1]]],
    ]
    
def equal_primes(expected, retval)
  expected[2,expected.length-2].eql?(retval[2,retval.length-2])
end

# version 1.2
# see http://lecture.ecc.u-tokyo.ac.jp/johzu/joho-kagaku/
