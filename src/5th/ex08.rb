#!/usr/bin/env ruby

# exercises 5.10 - 5.13, 5.17 

$testunits__ = 
  [["simplesort.rb",
    [
     ["Ex5.10", "min_index", "int", 1, [2,1], 0],
     ["Ex5.10", "min_index", "int", 1, [1,2,3], 1],
     ["Ex5.10", "min_index", "int", 0, [1,2,3], 0]
    ]
   ],
   ["mergesort.rb", 
    [
     ["Ex5.11", "merge", "array_of_int", [1,2,3,4],[1,3],[2,4]],
     ["Ex5.11", "merge", "array_of_int", [2,4,5],[5],[2,4]],
     ["Ex5.11", "merge", "array_of_int", [1,2,3],[1,3],[2]],
     ["Ex5.11", "merge", "array_of_int", [1,1,1,2],[1,1],[1,2]]
    ]
   ],
   ["mergesort_r.rb",
    [
     ["Ex5.17", "merge_rec", "array_of_int", [3], [3,1,4,1], 0, 0],
     ["Ex5.17", "merge_rec", "array_of_int", [1,3,4], [3,1,4,1], 0, 2],
     ["Ex5.17", "merge_rec", "array_of_int", [1,1,4], [3,1,4,1], 1, 3],
     ["Ex5.17", "merge_rec", "array_of_int", [4], [3,1,4,1,5,9,2], 2, 2],
     ["Ex5.17", "merge_rec", "array_of_int", [1,4,5,9], [3,1,4,1,5,9,2], 2, 5],
     ["Ex5.17", "mergesort_r", "array_of_int", [1,1,3,4], [3,1,4,1]],
     ["Ex5.17", "mergesort_r", "array_of_int", [1,1,2,3,4,5,9], [3,1,4,1,5,9,2]]
    ]
   ]
  ]

# version 1.3
# see http://lecture.ecc.u-tokyo.ac.jp/johzu/joho-kagaku/
