CONTENTS

# 1-BASIC
## Syntax
## Data type
## I/O Commands

# 2-OPERATORS
## Assign
## Compare
## Calculate 
## Logic

# 3-CONDITIONS

# 4-LOOP

# 5-METHODS
## Create
## Convert
## Check
## Arrange
## Add
## Remove
## Select
## Iterate
## Iterate and Select
## Iterate and Modify

--------------------
--------------------

# 1-BASIC

## Syntax

# inline comment

=begin
block comment
cannot be indented
=end

snake_case_for_file_variable_method_name

CONSTANT  # available throughout app
$global   # available throughout app
@@class   # accessible by instances of class, or class itself
@instance # available throughout the current instance of parent class
local     # obey all scope boundaries

arr.each { |item| single-line code }

arr.each do |item|
  # multi-line
  # code
end

def method(parameter = "default")
  # code
end

--------------------

## Data type

'string'              # string
"string"              # string # accept interpolation
  "Hello, #{name}!"   # interpolation

123                   # integer
3.14                  # float
true                  # boolean
false                 # boolean
nil                   # nil
:sym                  # symbol
[item, element, 1]    # array 
{key: "value", f: 2}  # hash

--------------------

## I/O COMMANDS

user_input = gets.chomp
test
#=> "test"

print "Love!"
Love!=> nil

puts "Love!"
Love!
=> nil

p "Love!"
"Love!"
=> "Love!"

putc "Love!"
L=> "Love"

--------------------
--------------------

# 2-OPERATORS

## Assign

x = 10          # assign
x += 4 #=> 14   # add
x -= 4 #=> 10   # subract
x *= 4 #=> 40   # multiply
x /= 2 #=> 20   # divide
x %= 3 #=> 2    # modulo
x ** 3 #=> 8    # exponent

--------------------

## Compare

4 == 4          #=> true  # equals
"4" == 4        #=> false
"abc" == "abc"  #=> true
nil == false    #=> false
4 != 5          #=> true  # not equals
4 > 5           #=> false # greater than
4 >= 5          #=> true  # greater than or equals to 
4 < 5           #=> true  # less than
4 <= 5          #=> true  # less than or equals to
5.eql?(5.0)     #=> false # cheaks value and type

a = 5
b = 5
a.equal?(b)
#=> true # checks whether both values are the exact same object in memory

a = "hello"
b = "hello"
a.equal?(b)
#=> false # checks whether both values are the exact same object in memory

1 <=> 5   #=> -1  # left value < right value
1 <=> 1   #=> 0   # left value = right value
5 <=> 1   #=> 1   # left value > right value

--------------------

## Calculate

1 + 1     #=> 2   # add
2 - 1     #=> 1   # subtract
2 * 2     #=> 4   # multiply
8 / 2     #=> 4   # divide
8 / 2.0   #=> 4.0 # integer x float = float
8 % 2     #=> 0   # modulo
3 ** 2    #=> 9   # exponent

2 + 3 * 4 #=> 14  # things on the right go first

--------------------

## Logic

  # AND
true  && true  #=> true
true  && false #=> false
false && true  #=> false
false && false #=> false

  # OR
true  || true  #=> true
true  || false #=> true
false || true  #=> true
false || false #=> false

  # NOT
!true   #=> false
!false  #=> true

--------------------
--------------------

# 3-CONDITIONS

## If Statement
if statement == true
  # code A
elsif another_statement == true  
  # code B 
else
  # code C
end

## Unless Statement
unless statement == true
  # code A
else
  # code B
end

## Single-line Format
puts "Hello World!" if 1 < 2

## Case Statement
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

## Ternary Operator
conditional statement ? <execute if true> : <execute if false> 

opinion = age < 18 ? "You're young!" : "You're an adult!" 

--------------------
--------------------

# 4-LOOP

## Loop keeps going untill break
i = 0
loop do 
  puts "i is #{i}"
  i += 1
  break if i == 10
end

## While loop keeps going untill the condition is met
i = 0 
while i < 10 do
  puts "i is #{i}"
  i += 1
end

while gets.chomp != "yes" do
  puts "Will you go to prom with me?"
end

## Until loop is the opposite of while loop
i = 0
until i >= 10 do
 puts "i is #{i}"
 i += 1
end

until gets.chomp == "yes" do
  puts "Will you go to prom with me?"
end

## Range is used when we know exactly how many times we want our loop to run
(1..3) # inclusive: 1, 2, 3
(1...3) # exclusive: 1, 2
("a".."c") # a, b, c

## For loop iterates through a collection of information: array or range
for i in 0..5
  puts "#{1} zombies incoming!"
end

## Times loop loops for a specific number of times
3.times do
  puts "Are you ok?"
end

3.times do |number|
  puts "Fact #{number}" # (starts with 0)
end

## Upto and Downto loops iterate from a starting number to another number
5.upto(10) { |num| print "#{num} " }     #=> 5 6 7 8 9 10

10.downto(5) { |num| print "#{num} " }   #=> 10 9 8 7 6 5

## Break ends the loop
## Next jumps to the next iteration
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

--------------------
--------------------

# 5-METHODS

## Create

Array(nil)        #=> []
Array(3)          #=> [3]
Array(1..3)       #=> [1, 2, 3]
Array(["a", "b"]) #=> ["a", "b"]
Array.new           #=> []
Array.new(3)        #=> [nil, nil, nil]
Array.new(3, 7)     #=> [7, 7, 7]
Array.new(3, true)  #=> [true, true, true]
Array.new(3) { Array.new(2) } #=> [[nil, nil], [nil, nil], [nil, nil]]
%w[1 b c] #=> ["1", "b", "c"]
%w(1 b c) #=> ["1", "b", "c"]
%i[1 b c] #=> [:"1", :b, :c]
%i(1 b c) #=> [:"1", :b, :c] 

Hash.new  #=> {}

rocket_syntax = {
  :a => 1,
  :b => 2
}

symbol_syntax = {
  a: 1,
  b: 2
}

--------------------

## Convert

"con vert".split      #=> ["con", "vert"]
"convert".split("")   #=> ["c", "o", "n", "v", "e", "r", "t"]
"convert".chars       #=> ["c", "o", "n", "v", "e", "r", "t"]

16.to_f    #=> 16.0
16.7.to_i  #=> 16   (no rounding)
8.to_s     #=> "8"
nil.to_s   #=> ""
:abc.to_s  #=> "abc"

a = [1, 2, 3]
a.join      #=> "123"
a.join("-") #=> "1-2-3"

hash = {
  a: 1,
  b: 2
}
hash.to_a   #=> [[:a, 1], [:b, 2]]

--------------------

## Check  

4.even?           #=> true
4.odd?            #=> false
4.between?(2, 6)  #=> true
16.remainder(5)   #=> 1
16.divmod(5)      #=> [3, 1]

"check".empty?           #=> false
"check".nil?             #=> false
"check".include?("hec")  #=> true
"check".length           #=> 5

arr = ["a", "b", "c"]
arr.size            #=> 3
arr.length          #=> 3
arr.count           #=> 3
arr.count("a")      #=> 1 (only count individual characters in the argument)
arr.scan("a")       #=> ["a"] (count the whole argument)

hash.key?(key_name)  #=> return true or false

.any?  # return ture if any of the elements in this object pass the test in the block.
.all?  # return true if all of the elements in this object pass the test in the block.
.none? # return true if none of the elements in the object pass the test in the block.

--------------------

## Arrange

"arrange".capitalize  #=> "Arrange"
"arrange".upcase      #=> "ARRANGE"
"ARRANGE".downcase    #=> "arrange" 
"arrange".reverse     #=> "egnarra"
" arrange ".strip     #=> "arrange"

arr = [1, [2, 3], 4]
arr.reverse   #=> [4, [2, 3], 1]
arr.flatten   #=> [1, 2, 3, 4]

arr = [1, 3, 2, 4]
arr.sort  #=> [1, 2, 3, 4]

[1, 2,].product([3, 4]) 
#=> [[1, 3], [1, 4], [2, 3], [2, 4]]

--------------------

## Add

"con".concat("cat") #=> "concat"
"con" + "cat"       #=> "concat"
"con" << "cat"      #=> "concat"

"add".sub("d", "s")       #=> "asd"
"add".gsub("d", "s")      #=> "ass"
"add".insert(-1, " on")   #=> "add on"
"!".prepend("add ", "on") #=> "add on!" 

arr = [1, 2, 3, 4]
arr << 5        #=> [1, 2, 3, 4, 5]
arr.push(6)     #=> [1, 2, 3, 4, 5, 6]
arr.unshift(0)  #=> [0, 1, 2, 3, 4, 5, 6] 
arr.insert(3, 10, 20)  #=> [0, 1, 2, 10, 20, 3, 4, 5, 6]
arr.sum(1000)          #=> 1051

a = [1, 2, 3]
b = [3, 4, 5]
a + b       #=> [1, 2, 3, 3, 4, 5]
a.concat(b) #=> [1, 2, 3, 3, 4, 5]

nes_arr = [[1, 2], [3, 4]]
nes_arr << [5, 6]   #=> [[1, 2], [3, 4], [5, 6]]
nes_arr[0].push(9)  #=> [1, 2, 9]
nes_arr             #=> [[1, 2, 9], [3, 4], [5, 6]]

shoes = {}
shoes["fall"] = "sneakers"  #=> shoes = { "fall" => "sneakers" }

hash_x = { "a" => 100, "b" => 200 }
hash_y = { "b" => 250, "c" => 300 }
hash_x.merge(hash_y)  #=> { "a" => 100, "b" => 250, "c" => 300 }  # destructive: merge!

--------------------

## Remove

"apple".delete("p") #=> "ale"

arr = [0, 1, 2, 3, 3, 4, 5, nil, 6]
arr.pop        #=> 6        arr = [0, 1, 2, 3, 3, 4, 5, nil]
arr.shift(2)   #=> [0, 1]   arr = [2, 3, 3, 4, 5, nil]
arr.delete_at(3)  #=> 4     arr = [2, 3, 3, 5, nil]
arr.delete(2)     #=> [3, 3, 5, nil]
arr.compact       #=> [3, 3, 5]   # destruvtive: compact!
arr.uniq          #=> [3, 5]      # destructive: uniq!
arr.clear      #=> []
[1, 1, 2, 2, 3, 4] - [1, 4] #=> [2, 2, 3]

nes_arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
nes_arr.pop     #=> [7, 8, 9]
nes_arr[0].pop  #=> 3
nes_arr         #=> [[1, 2], [4, 5, 6]]

shoes = { 
  "summer" => "sandals", 
  "winter" => "boots" 
}
shoes.delete("summer")  #=> "sandals" # shoes = { "winter" => "boots" }  # destructive

--------------------

## Select

"kind"[0]    #=> "k"
"kind"[0..1] #=> "ki"
"kind"[0, 3] #=> "kin"
"kind"[-1]   #=> "d"

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
arr.filter { |item| item > 3 }    #=> [4, 5, 6] 
arr.reject { |item| item < 4 }    #=> [4, 5, 6] # destructive: reject!
arr.keep_if { |item| item > 3 }   #=> [4, 5, 6]
arr.delete_if { |item| item < 4 } #=> [4, 5, 6]
arr.sample(n) # return n random element from array
array_a & array_b # get items that appear in two arrays at the same time

nes_arr = [[1, 2], [3, 4], [5, 6]]
nes_arr[0][1]     #=> 2
nes_arr[9][0]    #=> NoMethodError
nes_arr[0][9]    #=> nil
nes_arr.dig(9, 9) #=> nil

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

--------------------

## Iterate

arr.each { |item| code } 
[1, 2, 3].each { |num| print "#{num}! " }
1! 2! 3! => [1, 2, 3]

hash.each { |key, value| code } 
{joe: 80, jack: 50, jane: 98}.each do |name, score|
  print "#{name}: #{score} " if score > 60
end
joe: 80 jane: 98 => {joe: 80, jack: 50, jane: 98}

arr.reverse_each { |item| code }
[1, 2, 3].reverse.each { |num| print "#{num}! " }
3! 2! 1! => [3, 2, 1]

arr.each_index { |index| code }
[1, 2, 3].each_index { |index| print "#{index}! " }
0! 1! 2! => [1, 2, 3]

arr.each_with_index { |item, index| code }
["a", "b", "c", "d"].each_with_index do |alphabet, index|
  print "#{alphabet}! " if index % 2 == 0
end
a! c! => ["a", "b", "c", "d"]

--------------------

## Iterate and Select

arr.select { |item| code }
  # alt: filter
  # iterate over items, return new collection 
[1, 2, 3, 4, 5].select { |num| num % 2 == 0 }
=> [2, 4]

arr.find { |item| code }  
  # return first item in collection if condition is true
[1, 2, 3].find { |num| num.even? }
=> 2

--------------------

## Iterate and Modify

arr.map { |item| code }  
  # destructive: map!
  # alt: .collect
  # return new collection
  # can chain .with_index
  # .filter_map == .map + .compact
[1, 2, 3].map { |num| num**2 }
=> [1, 4, 9]
["7", "8", "9"].map(&:to_i)
=> [7, 8, 9]

arr.reduce(optional_initial_acc_value) { |accumulator, item| code }
  # alt: .inject  
  # iterate over elements, return accumulator 
votes = ["A", "B", "A"]
votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end
=> {"A"=>2, "B"=>1}















