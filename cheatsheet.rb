# inline comment

=begin
block comment
cannot be indented
=end

file_variable_method

CONSTANT # available throughout app
$global # available throughout app
@@class # accessible by instances of class, or class itself
@instance # available throughout the current instance of parent class
local # obey all scope boundaries

ClassExample

[1, 2, 3].each { |i| single_line_code }

[1, 2, 3].each do |i|
  # multi-line
  # code
end


# LITERALS

"string" # string
123 # integer
3.14 # float
true # boolean
{'a' => 1, 'b' => 2} # hash
[1, 2, 3] # array 
:sym # symbol
nil # nil


# COMPARISON OPERATORS

4 == 4 #=> true (equals)
"4" == 4 #=> false
"abc" == "abc" #=> true
nil == false #=> false
4 != 5 #=> true (not equals)
4 > 5 #=> false (greater than)
4 >= 5 #=> true (greater than or equal to) 
4 < 5 #=> true (less than)
4 <= 5 #=> true (less than or equal to)
5.eql?(5.0) #=> false (cheaks value and type)

a = 5
b = 5
a.equal?(b) #=> true (checks whether both values are the exact same object in memory)

a = "hello"
b = "hello"
a.equal?(b) #=> false (checks whether both values are the exact same object in memory)

5 <=> 10    #=> -1 (left value < right value)
10 <=> 10   #=> 0 (left value == right value)
10 <=> 5    #=> 1 (left value > right value)


# MATH OPERATORS

# add 
1 + 1 #=> 2

# subtract
2 - 1 #=> 1

# multiply
2 * 2 #=> 4

# divide 
8 / 2 #=> 4

# power
3 ** 2 #=> 9

# modulo
8 % 2 #=> 0

2 + 3 * 4 #=> 14 things on the right go first


# NUMBERS

17 / 5 #=> 3
17 / 5.0 #=> 3.4

13.to_f #=> 13.0 
13.9.to_i #=> 13 (no rounding)

6.even? #=> true
7.even? #=> false

6.odd? #=> false
7.odd? #=> true

16.remainder(5) #=> 1
16.divmod(5) #=> [3, 1]


# STRINGS

'string literals'
"string literals" # accepts interpolation and escape characters (\', \",)
\n # newline
"Hello, #{name}!" # interpolation

"Hello ".concat("world!") #=> "Hello world!"
"Hello " + "world!" #=> "Hello world!"
"Hello " << "world!" #=> "Hello world!"

"hello"[0] #=> "h"
"hello"[0..1] #=> "he"
"hello"[0, 4] #=> "hell"
"hello"[-1] #=> "o"

"string".capitalize #=> "String"
"string".include?("tri") #=> true 
"string".upcase #=> "STRING"
"STRING".downcase #=> "string" 
"string".empty? #=> false
"string".length #=> 6
"string".reverse #=> "gnirts"
" string ".strip #=> "string"
"string".nil? #=> false

"string separation".split #=> ["string", "separation"]
"string".split("") #=> ["s", "t", "r", "i", "n", "g"]
"string".chars #=> ["s", "t", "r", "i", "n", "g"]

"hello".sub("l", "y") #=> "heylo"
"hello".gsub("l", "y") #=> "heyyo"
"hello".insert(-1, " world") #=> "hello world"
"hello world".delete("l") #=> "heo word"
"!".prepend("hello ", "world") #=> "hello world!" 

7.to_s #=> "7"
nil.to_s #=> ""
:symbol.to_s #=> "symbol"


# ASSIGNMENT OPERATORS

var = 10
var += 4 #=> 14
var -= 4 #=> 6
var *= 4 #=> 40
var /= 2 #=> 5


# INPUT AND OUTPUT COMMANDS

user_input = gets.chomp
input
#=> input

print "Hello World!"
Hello World!=> nil

puts "Hello World!"
Hello World!
=> nil

p "Hello World!"
"Hello World!"
=> "Hello World!"

putc "Hello World!"
H=> "Hello"


# CONDITIONAL STATEMENT

# if statement
if statement_to_be_evaluated == true
  # code A
elsif next_statement_to_be_evaluated == true  
  # code B 
else
  # code C
end

# unless statement
unless statement_to_be_evaluated == true
  # code A
else
  # code B
end

puts "Hello World!" if 1 < 2 # single-line format

# case statement
grade = "F"
did_i_pass = case grade
  when "A" then "Excellent!"
  when "B" then "Well done!"
  else "It's ok"
end

grade = "F"
case grade
when "A"
  # code
  # for A
when "B"
  # code 
  # for B
else 
  # code
  # for else
end

# ternary operator
conditional statement ? <execute if true> : <execute if false> 

opinion = age < 18 ? "You're young!" : "You're an adult!" 


# LOGICAL OPERATORS

if 1 < 2 && 2 < 3 # both must be true
  # code
end

if 1 < 2 || 2 < 3 # only one must be true
  # code
end

if !(1 < 2) #=> true


# LOOP

# loop keeps going untill break
i = 0
loop do 
  puts "i is #{i}"
  i += 1
  break if i == 10
end

# while loop keeps going untill the condition is met
i = 0 
while i < 10 do
  puts "i is #{i}"
  i += 1
end

while gets.chomp != "yes" do
  puts "Will you go to prom with me?"
end

# until loop is the opposite of while loop
i = 0
until i >= 10 do
 puts "i is #{i}"
 i += 1
end

until gets.chomp == "yes" do
  puts "Will you go to prom with me?"
end

# range is used when we know exactly how many times we want our loop to run
(1..3) # inclusive: 1, 2, 3
(1...3) # exclusive: 1, 2
("a".."c") # a, b, c

# for loop iterates through a collection of information: array or range
for i in 0..5
  puts "#{1} zombies incoming!"
end

# times loop loops for a specific number of times
3.times do
  puts "Are you ok?"
end

3.times do |number|
  puts "Fact #{number}" # (starts with 0)
end

# upto and downto loops iterate from a starting number to another number
5.upto(10) { |num| print "#{num} " }     #=> 5 6 7 8 9 10

10.downto(5) { |num| print "#{num} " }   #=> 10 9 8 7 6 5

# break ends the loop
# next jumps to the next iteration
i = 0
loop do
  i = i + 2
  if i == 4
    next        # skip rest of the code in this iteration
  end
  puts i
  if i == 10
    break
  end
end

# while, until, for loops don't have their own scope


# ITERATORS

numbers = [1, 2, 3, 4]
numbers.each { |n| puts n } #=> print 1, 2, 3, 4 and return initial array
numbers.map { |n| n*n }     #=> return new array [1, 4, 9, 16], initial array unchanged
numbers.collect { |n| n*n } #=> return new array [1, 4, 9, 16], initial array unchanged
numbers.select { |n| n > 2 } #=> return new array [3, 4], initial array unchanged

numbers.each_index { |i| puts i} #=> print 0, 1, 2, 3 and return initial array 
numbers.each_with_index { |value, index| puts "#{index+1}. #{value}" }


# ARRAY

## initialize:  Array.new, [], %w
## read:        [0], first, last
## add:         push, <<, unshift
## remove:      pop, delete_at, shift

Array.new           #=> []
Array.new(3)        #=> [nil, nil, nil]
Array.new(3, 7)     #=> [7, 7, 7]
Array.new(3, true)  #=> [true, true, true]

str_array = %w(a, b, c)
str_array = ["a", "b", "c"]
str_array[0]  #=> "a"
str_array[-1] #=> "c"
str_array[-2] #=> "b"
str_array.first   #=> "a"
str_array.last(2) #=> ["b", "c"]

num_array = [1, 2, 3]
num_array.push(4)     #=> [1, 2, 3, 4]
num_array << 5        #=> [1, 2, 3, 4, 5]
num_array.pop         #=> 5
num_array.unshift(7)  #=> [7, 1, 2, 3, 4]
num_array.shift       #=> 7

#pop and #shift can take integer argument
num_array = [1, 2, 3, 4, 5]
num_array.pop(2)    #=> [4, 5]
num_array.shift(2)  #=> [1, 2]

a = [1, 2, 3]
b = [3, 4, 5]
a + b       #=> [1, 2, 3, 3, 4, 5]
a.concat(b) #=> [1, 2, 3, 3, 4, 5]
[1, 1, 2, 2, 3, 4] - [1, 4] #=> [2, 2, 3]

[].empty?               #=> true
[[]].empty?             #=> false
[1, 2, 3].length        #=> 3
[1, 2, 3].size          #=> 3
[1, 2, 3].reverse       #=> [3, 2, 1]
[1, 2, 3].include?(3)   #=> true 
[1, 2, 3].include?("3") #=> false
[1, 2, 3].join          #=> "123"
[1, 2, 3].join("-")     #=> "1-2-3"

numbers = [1, 2, 3, 4]
numbers.delete_at(1) #=> return the deleted value 2, initial array modified to [1, 3, 4]
numbers.delete(1) #=> return modified initial array [2, 3, 4]

numbers = [1, 1, 2, 2, 3, 3, 4, 4]
numbers.uniq  #=> return new array [1, 2, 3, 4], initial array unchanged
numbers.uniq! #=> return modified initial array [1, 2, 3, 4]

arrays = [1, 2, [3, 4], [5, 6]]
arrays.flatten #=> [1, 2, 3, 4, 5, 6]

array = [2, 3, 1, 4]
array.sort #=> return new array [1, 2, 3, 4], initial array unchanged

[1, 2, 3].product([4, 5]) 
#=> [[1, 4], [1, 5], [2, 4], [2, 5], [3, 4], [3, 5]]

[1, 2, 3].sample # pick one random item from array

array.take(3) # get first three items from array
array[0,3] # starting from index 0, get three items from array
array[1..-1] # get items from index 1 to index -1 inclusive from array
array.compact # remove nil from array
array_a & array_b # get items that appear in two arrays at the same time



