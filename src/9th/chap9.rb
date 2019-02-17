#!/usr/bin/env ruby

class Request
  attr_accessor("title", "next")

  def initialize(t)
    self.title = t
    self.next = nil
  end
end

class Contact
  attr_accessor("name","number","left","right")
  def initialize(name,number)
    self.name = name
    self.number = number
    self.left = nil
    self.right = nil
  end
end

def _ut_songs_()
  r0 = Request.new("Tadahitotsu")
  r1 = Request.new("Oozorato")
  r2 = Request.new("Ashiotowo")
  r3 = Request.new("Toukonha")
  r4 = Request.new("Tadahitotsu")
  r0.next = r1
  r1.next = r2
  r2.next = r3
  r3.next = r4
  r0
end
def _ut_songs_but_Tadahitotsu()
  r0 = Request.new("Oozorato")
  r1 = Request.new("Ashiotowo")
  r2 = Request.new("Toukonha")
  r0.next = r1
  r1.next = r2
  r0
end

def _s2req_(str)
  r = nil
  for i in 1..str.length
    q = Request.new(str[str.length-i..str.length-i])
    q.next = r
    r = q
  end
  r
end

def _setup()
  $ut_songs_ = _ut_songs_()
  root = Contact.new("kato", "3130")
  root.left = hamada = Contact.new("hamada", "9844")
  hamada.right = Contact.new("ikeda", "0866")
  root.right = $mori_  = Contact.new("mori", "0074")
  hamada.left = $arima_ = Contact.new("arima", "1095")
  $mori_.right = Contact.new("yamada", "3063")
  $mori_.left = $kazama_ = Contact.new("kazama", "3063")
  $kazama_.right = Contact.new("masuda", "3063")
  $phonebook_ = root
end

_setup()
$_array_to_store = Array.new(8)


$testunits__ =
  [["first_contact.rb",
    [["Ex9.4",   "first_contact", "int", $arima_, $phonebook_]],
    [["Ex9.4",   "first_contact", "int", $kazama_, $mori_]]],
   ["request_length.rb",
    [["Ex9.5",   "request_length", "int", 0, nil]],
    [["Ex9.5",   "request_length", "int", 4, _ut_songs_()]]],
   ["delete_request.rb",
    [["Ex9.6",   "delete_request", "request", _ut_songs_but_Tadahitotsu(), 
                                            _ut_songs_(), "Tadahitotsu"]],
    [["Ex9.6",   "delete_request", "request", _ut_songs_(), 
                                            _ut_songs_(), "Miyakonoseihoku"]]],
   ["add_alphabetically.rb",
    [["Ex9.7",   "add_alphabetically", "request", _s2req_("abc"), 
                                            _s2req_("ac"), Request.new("b")]],
    [["Ex9.7",   "add_alphabetically", "request", _s2req_("abc"), 
                                            _s2req_("bc"), Request.new("a")]],
    [["Ex9.7",   "add_alphabetically", "request", _s2req_("abc"), 
                                            _s2req_("ab"), Request.new("c")]]],
   ["nth.rb",
    [["Ex9.11",   "nth", "request", _s2req_("abc"), _s2req_("abc"), 0]],
    [["Ex9.11",   "nth", "request", _s2req_("bc"), _s2req_("abc"), 1]],
    [["Ex9.11",   "nth", "request", _s2req_("c"), _s2req_("abc"), 2]]],
   ["depth.rb",
    [["Ex9.12",   "depth", "int", 4, $phonebook_]],
    [["Ex9.12",   "depth", "int", 3, $mori_]]],
   ["binarysort.rb",
    [["Ex9.13a",   "array_to_tree", "contact_by_traversal", 
      ["arima","hamada","ikeda","kato","kazama","masuda","mori","yamada"],
      ["kato","hamada","ikeda","mori","arima","yamada","kazama","masuda"]],
     ["Ex9.13b",   "tree_to_array", "array_of_sorted", 
      ["arima","hamada","ikeda","kato","kazama","masuda","mori","yamada"],
      $phonebook_, $_array_to_store, 0],
     ["Ex9.13c",   "binarysort", "int", 
      ["arima","hamada","ikeda","kato","kazama","masuda","mori","yamada"],
      ["kato","hamada","ikeda","mori","arima","yamada","kazama","masuda"]]],
]]

def equal_array_of_sorted(expected, computed)
  computed == $_array_to_store.length &&
    expected == $_array_to_store
end

def equal_request(r1,r2)
  visited={}
  while r1!=nil && r2!=nil && visited[r1]!=r2
    if r1.title == r2.title
      visited[r1]=r2
      r1=r1.next
      r2=r2.next
    else
      return false
    end
  end
  r1==r2
end

def _equal_order_contacts(c,names)
  if c==nil
    names
  else
    if names = _equal_order_contacts(c.left,names)
      if c.name == names[0]
        _equal_order_contacts(c.right,names[1..-1])
      else
        false
      end
    else
      false
    end
  end
end
        

def equal_contact_by_traversal(names, c)
  rest_names = _equal_order_contacts(c,names)
  rest_names == []
end

# version 1.2
# see http://lecture.ecc.u-tokyo.ac.jp/johzu/joho-kagaku/
