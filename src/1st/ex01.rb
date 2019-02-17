#!/usr/bin/env ruby

$testunits__ = 
  [["distance.rb",
    [["Ex1.3",   "distance",              "float", 5.0,      0, 0, 3, 4]]],
   ["yardpound.rb",
    [["Ex1.3",   "feet_to_cm",            "float", 896.62,  29, 5],
     ["Ex1.3",   "pound_to_kg",           "float", 0.07370,  0.1, 1],
     ["Ex1.9 a",   "celsius_to_fahrenheit", "float", 109.4,   43],
     ["Ex1.9 b",   "fahrenheit_to_celsius", "float", 42.777, 109],
     ["Ex1.9 c",   "ms_to_mph",             "float", 26.843,  12],
     ["Ex1.9 d",   "mph_to_ms",             "float", 11.623,  26]]],
   ["wci.rb",
    [["Ex1.9 e", "wind_chill_index", "float", 33.932, 39, 7],
     ["Ex1.9 f", "wind_chill_index_celsius", "float", 16.920, 17, 3]]],
   ["quadratic.rb",
    [["Ex1.9 g-a", "det", "float", 9, 1.0, 1.0, -2.0],
     ["Ex1.9 g-b", "solution1", "float", 1, 1.0, 1.0, -2.0],
     ["Ex1.9 g-c", "solution2", "float", (1-Math.sqrt(5))/2.0, 1.0, -1.0, -1.0],
     ["Ex1.9 g-d", "quadratic", "float", 17.0, 3.0, 2.0, 1.0, 2.0]]],
   ["bmi_yp.rb",
    [["Ex1.10", "bmi_yp", "float", 23.7103429969605, 5, 11, 170, 0]]],
#     ["Ex1.11", "heron", "float", 6.0, 3, 4, 5],
  ]

# version 1.2
# see http://lecture.ecc.u-tokyo.ac.jp/johzu/joho-kagaku/
