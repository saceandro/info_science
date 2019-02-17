#!/usr/bin/env ruby

$cantor_1__ = [[1, 1, 1], [1, 0, 1], [1, 1, 1]]
$cantor_2__ = [[1, 1, 1, 1, 1, 1, 1, 1, 1], [1, 0, 1, 1, 0, 1, 1, 0, 1], [1, 1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 0, 0, 0, 1, 1, 1], [1, 0, 1, 0, 0, 0, 1, 0, 1], [1, 1, 1, 0, 0, 0, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1, 1], [1, 0, 1, 1, 0, 1, 1, 0, 1], [1, 1, 1, 1, 1, 1, 1, 1, 1]]

$sierpinski_1__ = [[1, 0], [1, 1]]
$sierpinski_2__ = [[1, 0, 0, 0], [1, 1, 0, 0], [1, 0, 1, 0], [1, 1, 1, 1]]
$sierpinski_3__ = [[1, 0, 0, 0, 0, 0, 0, 0], [1, 1, 0, 0, 0, 0, 0, 0], [1, 0, 1, 0, 0, 0, 0, 0], [1, 1, 1, 1, 0, 0, 0, 0], [1, 0, 0, 0, 1, 0, 0, 0], [1, 1, 0, 0, 1, 1, 0, 0], [1, 0, 1, 0, 1, 0, 1, 0], [1, 1, 1, 1, 1, 1, 1, 1]]

$testunits__ = 
   [
    ["sierpinski.rb", 
     [
      ["SIERPINSKI", "cantor2d", "array", $cantor_1__, 1],
      ["SIERPINSKI", "cantor2d", "array", $cantor_2__, 2],
      ["SIERPINSKI", "sierpinski2d", "array", $sierpinski_1__, 1],
      ["SIERPINSKI", "sierpinski2d", "array", $sierpinski_2__, 2],
      ["SIERPINSKI", "sierpinski2d", "array", $sierpinski_3__, 3]
     ]
    ]
   ]

#def equal_solution(expected, retval) 
#  equal_or(expected, retval, method(:equal_float))
#end

#def equal_or(expected, retval, m_obj)
#  expected.any? { |v| 
#    m_obj.call(v,retval) 
#  }
#end

# version 1.2
# see http://lecture.ecc.u-tokyo.ac.jp/johzu/joho-kagaku/
