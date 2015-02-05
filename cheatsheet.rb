puts "ruby interview cheatsheet"


x **= 5	  # x = x ** 5

$is globalx
@is for a class = > can declare in method
@@ is global for class & dependencies => must declare b4 use inside method


#ARRAYS# 

array = [2,3,4,5,6]
array.sort #high to low
array.reverse #low to high

array.sort.reverse #etc.etc. 

array.uniq #removes all duplicates 

array = [2,3,4,5,6,7,8,8,8,2,1,2,1,0]
mod = array.uniq
mod = mod.sort.reverse
# mod = mod.reverse

.include?
.sort
.count # more versatile 
.size #array length 

puts "OG: #{array}"
puts "OG: #{mod}"



ary = [1, 2, 4, 2]
ary.count             #=> 4
ary.count(2)          #=> 2
ary.count{|x|x%2==0}  #=> 3
=====================================================

array = [0,1,6,7,8]
array.sort!

val = [2,3]
puts "#{val}"

# array.concat(val).sort!
array.concat(val).sort!
#gives [0, 1, 2, 3, 6, 7, 8]

array << val.map(&:to_i)
# [0, 1, 6, 7, 8, [2, 3]]

puts "#{array}"


a = [ "a", "b", "b", "b", "c" ]
a.delete("b")                   #=> "b"
a                               #=> ["a", "c"]

=====================================================

# SELF 

class WhatIsSelf
  def test
    puts "At the instance level, self is #{self}"
  end

  def self.test
    puts "At the class level, self is #{self}"
  end
end

WhatIsSelf.test 
 #=> At the class level, self is WhatIsSelf

WhatIsSelf.new.test 
 #=> At the instance level, self is #<WhatIsSelf:0x28190>




irb 10 <=> 9
=> 1

irb 10 <=> 11
=> -1


# HASH


grades = Hash.new 
grades["Bob"] = 82 
grades["Jim"] = 94 
grades["Billy"] = 58 

puts grades["Jim"]


hsh.keys.map(&:to_s).sort_by(&:length)

==============

In Ruby, a string is mutable, whereas a symbol is immutable. That means that
only one copy of a symbol needs to be created. Thus, if you have

x = :my_str
y = :my_str
:my_str will only be created once, and x and y point to the same area of memory. On the other hand, if you have

x = "my_str"
y = "my_str"
a string containing my_str will be created twice, and x and y will point to different instances.

==============

In Ruby, there are two sorting methods, .sort or sort!. The first method, .sort, simply returns a sorted array 
while leaving the original array alone. The second method, .sort!, modifies the actual array.

==========

public - can be accessed by any object (e.g. Obj.new.public_method) 
protected - can only be accessed from within the object itself, as well as any subclasses 
private - same as protected, but the method doesnt exist in subclasses 

However, it appears that protected and private act the same, except
for the fact that you cant call private methods with an explicit receiver

(i.e. self.protected_method works, but self.private_method doesn't).

PRINT VS PUTS

Yes, use print var instead; puts automatically appends a new line, print doesn't.
============


..	Creates a range from start point to end point inclusive	 1..10 Creates a range from 1 to 10 inclusive
...	Creates a range from start point to end point exclusive	 1...10 Creates a range from 1 to 9



puts(defined? a).to_s #local-variable
puts(defined? @b).to_s #instance-variable
puts(defined? $c).to_s #global-variable


a, b, c = 10, 20, 30


########################
########################
########################

ternary operator

puts true ? "true" : "false"
=> "true"


puts false ? "true" : "false"
=> "false"

======================================================
======================================================

a = 33
b = "hello"


puts "#{a.class}" #fixnum
puts "#{b.class}" #string




arr.each {|x| puts x*2}
# print 2,4,6,8 and returns [1,2,3,4] no matter what

arr.collect {|x| x*2}
# returns [2,4,6,8]

# And In your code
