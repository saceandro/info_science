#!/usr/bin/env ruby

# exercises 5.7 - 5.9 

$mat1_ = [[ 1,  2], [ 3,   4]]
$mat2_ = [[ 5,  6], [ 7,   8]]
$mat3_ = [[ 7, 10], [15,  22]]
$mat4_ = [[67, 78], [91, 106]]
$mat5_ = [[ 4783807,  6972050], [10458075, 15241882]]
$mate_ = [[ 1,  0], [ 0,   1]]

$fib1000_ = 70330367711422815821835254877183549770181269836358732742604905087154537118196933579742249494562611733487750449241765991088186363265450223647106012053374121273867339111198139373125598767690091902245245323403501

$testunits__ = 
  [["fibm.rb",
    [["Ex5.7a", "matmul",    "array", [[19, 22], [43, 50]], $mat1_, $mat2_],
     ["Ex5.7a", "matmul",    "array", $mat3_,               $mat1_, $mat1_],
     ["Ex5.7a", "matmul",    "array", $mat4_,               $mat2_, $mat2_],
     ["Ex5.7b", "matsquare", "array", $mat3_,               $mat1_],
     ["Ex5.7b", "matsquare", "array", $mat4_,               $mat2_],
     ["Ex5.7c", "matpower",  "array", $mate_,               $mat1_, 0],
     ["Ex5.7c", "matpower",  "array", $mat1_,               $mat1_, 1],
     ["Ex5.7c", "matpower",  "array", $mat3_,               $mat1_, 2],
     ["Ex5.7c", "matpower",  "array", $mat5_,               $mat1_, 10],
     ["Ex5.8", "fibm",       "int",   89,                         10],
     ["Ex5.8", "fibm",       "int",   $fib1000_,                1000],
     ["Ex5.9", "fibm6",      "int",   89,                         10],
     ["Ex5.9", "fibm6",      "int",   $fib1000_%1000000,        1000],
     ["Ex5.9", "fibm6",      "int",   937501,               10000000],        
    ]
   ],
   ["simplesort.rb",
    [["Ex5.10", "min_index", "int", 1, [2,1], 0],
     ["Ex5.10", "min_index", "int", 1, [1,2,3], 1],
     ["Ex5.10", "min_index", "int", 0, [1,2,3], 0]]],
   ["mergesort.rb", 
    [["Ex5.11", "merge", "array_of_int", [1,2,3,4],[1,3],[2,4]],
     ["Ex5.11", "merge", "array_of_int", [2,4,5],[5],[2,4]],
     ["Ex5.11", "merge", "array_of_int", [1,2,3],[1,3],[2]],
     ["Ex5.11", "merge", "array_of_int", [1,1,1,2],[1,1],[1,2]]]],
   ["mergesort_r.rb",
    [["Ex5.17", "mergesort_r", "array_of_int", [1,1,3,4], [3,1,4,1]],
     ["Ex5.17", "mergesort_r", "array_of_int", [1,1,2,3,4,5,9], [3,1,4,1,5,9,2]]]],
   ["binsort.rb",
    [["Ex5.18-1", "count", "array_of_int", [2,0,1], [0,2,0], 3],
     ["Ex5.18-1", "count", "array_of_int", [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1], [16], 17],
     ["Ex5.18-2", "rebuild", "array_of_int", [0,0,2], [2,0,1], 3],
     ["Ex5.18-2", "rebuild", "array_of_int", [16], [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1], 1],
     ["Ex5.18-3", "binsort", "array_of_int", [1,1,3,4], [3,1,4,1], 5],
     ["Ex5.18-3", "binsort", "array_of_int", [1,1,2,3,4,5,9], [3,1,4,1,5,9,2], 10]]],
   ["birthday.rb",
    [["Ex5.16-1", "birthday1", "int", 0, [0,364,123]],
     ["Ex5.16-1", "birthday1", "int", 5, [0,0,1,1,1,364,123]],
     ["Ex5.16-2", "birthday2", "int", 0, [0,364,123]],
     ["Ex5.16-2", "birthday2", "int", 5, [0,0,1,1,1,364,123]],
     ["Ex5.16-3", "birthday3", "int", 0, [0,364,123]],
     ["Ex5.16-3", "birthday3", "int", 5, [0,0,1,1,1,364,123]]]],
   
  ]


# version 1.3
# see http://lecture.ecc.u-tokyo.ac.jp/johzu/joho-kagaku/
