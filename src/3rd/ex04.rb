#!/usr/bin/env ruby

$mono_in__ = [ [0,1,0,1], [1,0,1,0], [0,1,0,1], [1,0,1,0] ]
$mono_out__ = [[0.5, 0.5, 0.5, 0.5], [0.5, 0.444444444444444, 0.555555555555556, 0.5], [0.5, 0.555555555555556, 0.444444444444444, 0.5], [0.5, 0.5, 0.5, 0.5]]

$color_in__ = [[[0, 0, 0], [0.5, 0.5, 0.5], [1, 1, 1]], [[1, 0, 0], [0, 1, 0], [0, 0, 1]], [[0, 1, 1], [1, 0, 1], [1, 1, 0]]]
$color_out__ = [[[0.375, 0.375, 0.125], [0.416666666666667, 0.416666666666667, 0.416666666666667], [0.375, 0.625, 0.625]], [[0.416666666666667, 0.416666666666667, 0.416666666666667], [0.5, 0.5, 0.5], [0.583333333333333, 0.583333333333333, 0.583333333333333]], [[0.5, 0.5, 0.5], [0.5, 0.5, 0.5], [0.5, 0.5, 0.5]]]

$testunits__ = 
   [
    ["mono.rb", 
     [["MONO", "image_average", "float", $mono_out__[0][0], $mono_in__, 0,0],
      ["MONO", "image_average", "float", $mono_out__[0][1], $mono_in__, 1,0],
      ["MONO", "image_average", "float", $mono_out__[0][2], $mono_in__, 2,0],
      ["MONO", "image_average", "float", $mono_out__[0][3], $mono_in__, 3,0],
      ["MONO", "image_average", "float", $mono_out__[1][0], $mono_in__, 0,1],
      ["MONO", "image_average", "float", $mono_out__[1][1], $mono_in__, 1,1],
      ["MONO", "image_average", "float", $mono_out__[1][2], $mono_in__, 2,1],
      ["MONO", "image_average", "float", $mono_out__[1][3], $mono_in__, 3,1],
      ["MONO", "image_average", "float", $mono_out__[2][0], $mono_in__, 0,2],
      ["MONO", "image_average", "float", $mono_out__[2][1], $mono_in__, 1,2],
      ["MONO", "image_average", "float", $mono_out__[2][2], $mono_in__, 2,2],
      ["MONO", "image_average", "float", $mono_out__[2][3], $mono_in__, 3,2],
      ["MONO", "image_average", "float", $mono_out__[3][0], $mono_in__, 0,3],
      ["MONO", "image_average", "float", $mono_out__[3][1], $mono_in__, 1,3],
      ["MONO", "image_average", "float", $mono_out__[3][2], $mono_in__, 2,3],
      ["MONO", "image_average", "float", $mono_out__[3][3], $mono_in__, 3,3],
      ["MONO", "blur", "array", $mono_out__, $mono_in__]]
    ],
    ["color.rb", 
     [
#      ["COLOR", "image_average", "float", $color_out__[0][0][0], $color_in__, 0,0,0],
#      ["COLOR", "image_average", "float", $color_out__[0][0][1], $color_in__, 0,0,1],
#      ["COLOR", "image_average", "float", $color_out__[0][0][2], $color_in__, 0,0,2],
#      ["COLOR", "image_average", "float", $color_out__[0][1][0], $color_in__, 1,0,0],
#      ["COLOR", "image_average", "float", $color_out__[0][1][1], $color_in__, 1,0,1],
#      ["COLOR", "image_average", "float", $color_out__[0][1][2], $color_in__, 1,0,2],
#      ["COLOR", "image_average", "float", $color_out__[0][2][0], $color_in__, 2,0,0],
#      ["COLOR", "image_average", "float", $color_out__[0][2][1], $color_in__, 2,0,1],
#      ["COLOR", "image_average", "float", $color_out__[0][2][2], $color_in__, 2,0,2],
#      ["COLOR", "image_average", "float", $color_out__[0][0][0], $color_in__, 0,0,0],
#      ["COLOR", "image_average", "float", $color_out__[1][0][1], $color_in__, 0,1,1],
#      ["COLOR", "image_average", "float", $color_out__[1][0][2], $color_in__, 0,1,2],
#      ["COLOR", "image_average", "float", $color_out__[1][1][0], $color_in__, 1,1,0],
#      ["COLOR", "image_average", "float", $color_out__[1][1][1], $color_in__, 1,1,1],
#      ["COLOR", "image_average", "float", $color_out__[1][1][2], $color_in__, 1,1,2],
#      ["COLOR", "image_average", "float", $color_out__[1][2][0], $color_in__, 2,1,0],
#      ["COLOR", "image_average", "float", $color_out__[1][2][1], $color_in__, 2,1,1],
#      ["COLOR", "image_average", "float", $color_out__[1][2][2], $color_in__, 2,1,2],
#      ["COLOR", "image_average", "float", $color_out__[2][0][1], $color_in__, 0,2,1],
#      ["COLOR", "image_average", "float", $color_out__[2][0][2], $color_in__, 0,2,2],
#      ["COLOR", "image_average", "float", $color_out__[2][1][0], $color_in__, 1,2,0],
#      ["COLOR", "image_average", "float", $color_out__[2][1][1], $color_in__, 1,2,1],
#      ["COLOR", "image_average", "float", $color_out__[2][1][2], $color_in__, 1,2,2],
#      ["COLOR", "image_average", "float", $color_out__[2][2][0], $color_in__, 2,2,0],
#      ["COLOR", "image_average", "float", $color_out__[2][2][1], $color_in__, 2,2,1],
#      ["COLOR", "image_average", "float", $color_out__[2][2][2], $color_in__, 2,2,2],
      ["COLOR", "blur", "array", $color_out__, $color_in__]]
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
