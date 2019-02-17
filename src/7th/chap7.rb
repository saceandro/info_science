#!/usr/bin/env ruby

$alignment1__ = [[0, -2, -4, -6], [-2, 2, 0, -2], [-4, 0, 1, -1], [-6, -2, 2, 0], [-8, -4, 0, 4]]

$dict__ = ["align", "airline", "engine", "arrow"]

$testunits__ =
  [["align.rb",
    [["Ex7.4", "align", "array", $alignment1__,"ATAC","AAC"],
     ["Ex7.5", "traceback", "string",["ATAC", "A-AC"],$alignment1__,"ATAC","AAC"]]],
   ["spell.rb",
    [
     ["Ex7.7", "spell", "string","align", $dict__, "arigne"],
     ["Ex7.7", "spell", "string","airline", $dict__, "airgggggggggggline"],
    ]],
  ]

# version 1.4
# see http://lecture.ecc.u-tokyo.ac.jp/johzu/joho-kagaku/
