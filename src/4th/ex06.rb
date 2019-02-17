#!/usr/bin/env ruby

$hanoi_0__ = ""
$hanoi_1__ = "from A to B; "
$hanoi_2__ = "from A to C; from A to B; from C to B; "
$hanoi_3__ = "from A to B; from A to C; from B to C; from A to B; from C to A; from C to B; from A to B; "
$hanoi_4__ = "from A to C; from A to B; from C to B; from A to C; from B to A; from B to C; from A to C; from A to B; from C to B; from C to A; from B to A; from C to B; from A to C; from A to B; from C to B; "

$testunits__ = 
   [
    ["hanoi.rb", 
     [
      ["HANOI", "hanoi_times", "float", 0, 0],
      ["HANOI", "hanoi_times", "float", 1, 1],
      ["HANOI", "hanoi_times", "float", 3, 2],
      ["HANOI", "hanoi_times", "float", 7, 3],
      ["HANOI", "hanoi_times", "float", 15, 4],
      ["HANOI", "hanoi_times", "float", 31, 5],
      ["HANOI", "hanoi", "string", $hanoi_0__, 0, "A", "B", "C"],
      ["HANOI", "hanoi", "string", $hanoi_1__, 1, "A", "B", "C"],
      ["HANOI", "hanoi", "string", $hanoi_2__, 2, "A", "B", "C"],
      ["HANOI", "hanoi", "string", $hanoi_3__, 3, "A", "B", "C"],
      ["HANOI", "hanoi", "string", $hanoi_4__, 4, "A", "B", "C"]
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
