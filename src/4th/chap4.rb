#!/usr/bin/env ruby

$swap_ascending_1 = [ 3,1,4,1 ]
$swap_ascending_2 = [ 1,3,4,1 ]

$testunits__ = 
    [
     ["prime.rb",
      [["Ex4.1", "prime", "boolean", true, 2],
       ["Ex4.1", "prime", "boolean", false, 9]]],
     ["combination.rb",
      [["Ex4.2", "combination", "int", 10, 5, 2],
       ["Ex4.2", "combination", "int", 70, 8, 4]]],
     ["prime.rb",
      [
       ["Ex4.3", "prime2", "boolean", true, 2],
       ["Ex4.3", "prime2", "boolean", false, 9]]],
     ["factorial_loop.rb",
      [["Ex4.6 a", "factorial_loop", "int", 120, 5],
       ["Ex4.6 a", "factorial_loop", "int", 5040, 7]]],
     ["power_loop.rb",
      [["Ex4.6 b", "power2_loop", "int", 1, 0],
       ["Ex4.6 b", "power2_loop", "int", 1024, 10],
       ["Ex4.6 c", "power_loop", "int", 27, 3, 3],
       ["Ex4.6 c", "power_loop", "int", 1, 0, 0]]],
     ["taylor_e_loop.rb",
      [["Ex4.6 d", "taylor_e_loop", "float", 1, 0, 0],
       ["Ex4.6 d", "taylor_e_loop", "float", Math::E, 1, 10]]],
     ["prime_loop.rb",
      [["Ex4.7 a", "nod_loop", "int", 7, 36, 12],
       ["Ex4.7 a", "nod_loop", "int", 12, 108, 108],
       ["Ex4.7 b", "nop_loop", "int", 11, 36],
       ["Ex4.7 b", "nop_loop", "int", 28, 108],
       ["Ex4.7 c", "msod_loop", "int", 28, 15],
       ["Ex4.7 c", "msod_loop", "int", 60, 25],
       ["Ex4.8 a", "np_loop", "int", 5, 5],
       ["Ex4.8 a", "np_loop", "int", 7, 6],
       ["Ex4.8 b", "nth_prime_loop", "int", 13, 5, 3],
       ["Ex4.8 b", "nth_prime_loop", "int", 29, 13, 4]]],
     ["collatz_loop.rb",
      [["Ex4.8 c", "collatz_loop", "int", 5, 5],
       ["Ex4.8 c", "collatz_loop", "int", 16, 7]]],
     ["prime_loop.rb",
      [["Ex4.8 d", "next_perfect_loop", "int", 6, 6],
       ["Ex4.8 d", "next_perfect_loop", "int", 28, 7]]],
     ["factorial.rb",
      [["Ex4.9 a", "factorial", "int", 120, 5],
       ["Ex4.9 a", "factorial", "int", 5040, 7]]],
     ["power.rb",
      [["Ex4.9 b", "power2", "int", 1, 0],
       ["Ex4.9 b", "power2", "int", 1024, 10],
       ["Ex4.9 c", "power", "int", 27, 3, 3],
       ["Ex4.9 c", "power", "int", 1, 0, 0]]],
     ["taylor_e.rb",
      [["Ex4.9 d", "taylor_e", "float", 1, 0, 0],
       ["Ex4.9 d", "taylor_e", "float", Math::E, 1, 10]]],
     ["prime.rb",
      [
#       ["Ex4.3", "prime2", "bool", true, 2],
#       ["Ex4.3", "prime2", "bool", false, 9],
       ["Ex4.10 a", "nod", "int", 7, 36, 12],
       ["Ex4.10 a", "nod", "int", 12, 108, 108],
       ["Ex4.10 b", "nop", "int", 11, 36],
       ["Ex4.10 b", "nop", "int", 28, 108],
       ["Ex4.10 c", "msod", "int", 28, 15],
       ["Ex4.10 c", "msod", "int", 60, 25],
       ["Ex4.11 a", "np", "int", 5, 5],
       ["Ex4.11 a", "np", "int", 7, 6],
       ["Ex4.11 b", "nth_prime", "int", 13, 5, 3],
       ["Ex4.11 b", "nth_prime", "int", 29, 13, 4]]],
     ["collatz.rb",
      [["Ex4.11 c", "collatz", "int", 5, 5],
       ["Ex4.11 c", "collatz", "int", 16, 7]]],
     ["prime.rb",
      [["Ex4.11 d", "next_perfect", "int", 6, 6],
       ["Ex4.11 d", "next_perfect", "int", 28, 7]]],
     # TODO: Ex4.12 a-c
     # TODO: Ex4.13a-d
     ["swapsort.rb",
      [
       ["Ex3.14 b", "swap_ascending", "swap_ascending_1",
        [1,3,4,1] , $swap_ascending_1, 0],
       ["Ex3.14 b", "swap_ascending", "swap_ascending_2",
        [1,3,4,1] , $swap_ascending_2, 1],
      ]],
     ["eratosthenes.rb",
      [["Ex4.14", "primes", "primes", [1,1,0,0], 3],
       ["Ex4.14", "primes", "primes", [1,1,0,0,1,0,1,0,1,1], 9]]],
     ["sierpinski.rb",
      [["Ex4.15", "sierpinski", "array_of_int", [[1, 0, 0], [1, 1, 0], [1, 0, 1]], 3],
       ["Ex4.15", "sierpinski", "array_of_int", [[1, 0, 0, 0, 0], [1, 1, 0, 0, 0], [1, 0, 1, 0, 0], [1, 1, 1, 1, 0], [1, 0, 0, 0, 1]], 5]]],
     ["match_safe.rb",
      [["Ex4.16", "match_safe", "int", 1, "abcd", "bc"],
       ["Ex4.16", "match_safe", "int", -1, "abcd", "e"]]],
      ]

def equal_primes(expected, retval)
  expected[2..-1].eql?(retval[2..-1])
end
def equal_swap_ascending_1(expected, retval) 
  expected.eql?($swap_ascending_1)
end
def equal_swap_ascending_2(expected, retval) 
  expected.eql?($swap_ascending_2)
end


# version 1.4
# see http://lecture.ecc.u-tokyo.ac.jp/johzu/joho-kagaku/
