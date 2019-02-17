#!/usr/bin/env ruby

$testunits__ =
  [["sketch.rb",
    [["Ex8.9",   "sketch", "array_of_drawables", :array_of_objects],
     ["Ex8.11c", "art",    "anything_but_show",  :anything]]],
  ]

def equal_array_of_drawables(expected, computed)
  if $show_status != :NOT_CALLED
    $show_status = :NOT_CALLED
    raise "This method should not call `show'."
  end
  (computed.kind_of? Array) &&
    begin
      computed.all? { |element| element.method(:draw) }
    rescue
      false
    end
end

$show_status = :NOT_CALLED

def show(a)
  $show_status = :INVALID
  if !a.kind_of? Array
    raise "the parameter to show must be an array, but #{a.class} is given."
  elsif !a.all?{ |e| e.kind_of? Array }
    raise "the parameter to show must be a 2 or 3 dimensional array."
  elsif 400 < a.length()
    raise "the height of the picture is #{a.length()}, which must not be "+
      "greater than 400."
  elsif !a.all?{ |e| e.length <= 400 }
    raise "the width of the picture is #{a[0].length()}, which must not be "+
      "greater than 400."
  else    
    $show_status = :VALID
  end
end

def equal_anything_but_show(expected, computed)
  if $show_status == :NOT_CALLED
    raise "You must call `show' in this method."
  else
    $show_status == :VALID
  end
end

# version 1.3
# see http://lecture.ecc.u-tokyo.ac.jp/johzu/joho-kagaku/
