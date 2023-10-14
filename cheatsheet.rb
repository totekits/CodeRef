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

arr = [1, 2, 3, 4]
arr.each { |item| code } # iterate over elements, return initial array
arr.reverse_each { |item| code } # iterate over elements in reverse order
arr.each_index { |index| code } # iterate over indexes, return initial array 
arr.each_with_index { |item, index| code } # take elms and indexes
arr.map { |item| code }  # return new array, non-destructive
arr.collect { |item| code } # return new array, non-destructive


# ARRAY

## create

array = [1, "two", :three]
Array(nil)        #=> []
Array(3)          #=> [3]
Array(1..3)       #=> [1, 2, 3]
Array(["a", "b"]) #=> ["a", "b"]
Array.new           #=> []
Array.new(3)        #=> [nil, nil, nil]
Array.new(3, 7)     #=> [7, 7, 7]
Array.new(3, true)  #=> [true, true, true]
%w[1 b c] #=> ["1", "b", "c"]
%w(1 b c) #=> ["1", "b", "c"] # convert to string
%i[1 b c] #=> [:"1", :b, :c]
%i(1 b c) #=> [:"1", :b, :c] # convert to symbol

## check

arr = ["a", "b", "c"]
arr.size            #=> 3
arr.length          #=> 3
arr.count           #=> 3
arr.count("a")      #=> 1 # can take argument and block
arr.include?("b") #=> true
arr.empty?        #=> false

## arrange

arr = [1, [2, 3], 4]
arr.reverse   #=> [4, [2, 3], 1]
arr.flatten   #=> [1, 2, 3, 4]

arr = [1, 3, 2, 4]
arr.sort  #=> [1, 2, 3, 4]

[1, 2,].product([3, 4]) 
#=> [[1, 3], [1, 4], [2, 3], [2, 4]]

## access

arr = [1, 2, 3, 4, 5, 6]
arr[2]    #=> 3
arr[200]  #=> nil
arr[-1]   #=> 6   # index
arr[2, 3] #=> [3, 4, 5]   # index, length 
arr[1..4] #=> [2, 3, 4, 5]  # range
arr.at(0) #=> 1
arr.first   #=> 1
arr.last(2) #=> [5, 6]
arr.take(3) #=> [1, 2, 3]
arr.drop(3) #=> [4, 5, 6]
arr.drop_while { |item| item < 3 }    #=> [3, 4, 5, 6]
arr.select { |item| item > 3 }    #=> [4, 5, 6] # destructive: select!
arr.reject { |item| item < 4 }    #=> [4, 5, 6] # destructive: reject!
arr.keep_if { |item| item > 3 }   #=> [4, 5, 6]
arr.delete_if { |item| item < 4 } #=> [4, 5, 6]
arr.sample(n) # return n random element from array
array_a & array_b # get items that appear in two arrays at the same time

## add

arr = [1, 2, 3, 4]
arr << 5        #=> [1, 2, 3, 4, 5]
arr.push(6)     #=> [1, 2, 3, 4, 5, 6]
arr.unshift(0)  #=> [0, 1, 2, 3, 4, 5, 6] 
arr.insert(3, "apple", "orange")  #=> [0, 1, 2, "apple", "orange", 3, 4, 5, 6]

a = [1, 2, 3]
b = [3, 4, 5]
a + b       #=> [1, 2, 3, 3, 4, 5]
a.concat(b) #=> [1, 2, 3, 3, 4, 5]
a.join      #=> "123"
a.join("-") #=> "1-2-3"

## remove

arr = [0, 1, 2, 3, 3, 4, 5, nil, 6]
arr.pop        #=> 6        arr = [0, 1, 2, 3, 3, 4, 5, nil]
arr.shift(2)   #=> [0, 1]   arr = [2, 3, 3, 4, 5, nil]
arr.delete_at(3)  #=> 4     arr = [2, 3, 3, 5, nil]
arr.delete(2)     #=> [3, 3, 5, nil]
arr.compact       #=> [3, 3, 5]   # destruvtive: compact!
arr.uniq          #=> [3, 5]      # destructive: uniq!
arr.clear      #=> []
[1, 1, 2, 2, 3, 4] - [1, 4] #=> [2, 2, 3]


# HASH

## create

hash = { 
  "key" => "value", 
  :key => 1,
  7 => [] 
}

Hash.new  #=> {}

rocket_syntax = {
  :a => 1,
  :b => 2
}

symbol_syntax = {
  a: 1,
  b: 2
}

## check

hash.key?(key)  #=> return true or false

## arrange

hash = {
  a: 1,
  b: 2
}
hash.to_a   #=> [[:a, 1], [:b, 2]]


## access

shoes = { 
  summer: "sandals", 
  winter: "boots" 
}
shoes[:summer]   #=> "sandals"
shoes[:spring]   #=> nil
shoes.keys    #=> [:summer, :winter]
shoes.values  #=> ["sandals" , "boots"]
shoes.select { |k, v| condition } #=> return k-v pairs if true
shoes.fetch(:summer)  #=> "sandals"
shoes.fetch(:fall)    #=> KeyError: key not found: :fall
shoes.fetch(:fall, "defalt nil message")  #=> "default nil message"

## add

shoes = {}
shoes["fall"] = "sneakers"  #=> shoes = { "fall" => "sneakers" }

hash_x = { "a" => 100, "b" => 200 }
hash_y = { "b" => 250, "c" => 300 }
hash_x.merge(hash_y)  #=> { "a" => 100, "b" => 250, "c" => 300 }  # destructive: merge!

## remove

shoes = { 
  "summer" => "sandals", 
  "winter" => "boots" 
}
shoes.delete("summer")  #=> "sandals" # shoes = { "winter" => "boots" }  # destructive

## iterate

hash.each do |key, value|
  # code
end


