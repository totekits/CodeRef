CONTENTS

# Basic
## Syntax
## Data type
## I/O Commands

# Operators
## Assign
## Compare
## Calculate 
## Logic

# Conditions

# Loops

# Core Classes
## Integer, Float
## Nil
## String
## Array
## Hash
## Range
## File
## Dir
## ERB (Embedded Ruby)
## Date, Time
## Regexp
## Proc, Lambda

# Core Modules
## Math
## Enumerable
## CSV
## Kernel
## JSON

# Class and object

# Block

# Others
## Shorthand to swap two values
## Exception

--------------------
--------------------

# BASIC

## Syntax

  # inline comment

=begin
block comment
cannot be indented
=end

file_variable_method  # snake_case
ClassModule           # UpperCamelCase

CONSTANT  # available throughout app
$global   # available throughout app
@@class   # accessible by the class itself, and instances of the class
@instance # available throughout the current instances of the parent class
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

gets # wait for user to hit Enter

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

puts [1, 2, 3].inspect
[1, 2, 3]
#=> nil

--------------------
--------------------

# OPERATORS

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

# CONDITIONS

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

# LOOPS

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

# CORE ClASSES

## Integer, Float

123   # Integer
12.3  # Float

16.to_f    #=> 16.0
16.7.to_i  #=> 16   (no rounding)
8.to_s     #=> "8"

Integer x Integer = Integer
Integer x Float = Float

1 + 1     #=> 2   # Add
2 - 1     #=> 1   # Subtract
2 * 2     #=> 4   # Multiply
8 / 2     #=> 4   # Divide
8 % 2     #=> 0   # Modulo
3 ** 2    #=> 9   # Exponent
2 + 3 * 4 #=> 14  # things on the right go first

4.even?           #=> true
4.odd?            #=> false
4.between?(2, 6)  #=> true
16.remainder(5)   #=> 1
16.divmod(5)      #=> [3, 1]

--------------------

## Nil
nil.to_s  #=> ""

--------------------

## String

"abc" # string literal
%{abc} # String literal

"one two three".split #=> ["one", "two", "three"]
"one".split("")       #=> ["o", "n", "e"]
"one".chars           #=> ["o", "n", "e"]

"abc".capitalize #=> "Abc"
"abc".upcase     #=> "ABC"
"ABC".downcase   #=> "abc" 
"AbC".swapcase   #=> "aBc"
"abc".reverse    #=> "cba"
" abc ".strip    #=> "abc"

"con".concat("cat") #=> "concat"
"con" + "cat"       #=> "concat"
"con" << "cat"      #=> "concat"

"add".sub("d", "s")       #=> "asd"
"add".gsub("d", "s")      #=> "ass"   # destructive form: gsub!
"add".insert(-1, " on")   #=> "add on"
"!".prepend("add ", "on") #=> "add on!"

"delete".delete("e")        #=> "dlt"
"delete".delete("e", "t")   #=> "dl"
"Delete".delete('a-z')      #=> "D"
"Delete1234".delete('0-9')  #=> "Delete"
"Delete1234".delete('^0-9') #=> "1234"

"slice"[1..-1]    #=> lice
"slice".slice!(0)  #=> lice

"kind"[0]    #=> "k"
"kind"[0..1] #=> "ki"
"kind"[0, 3] #=> "kin"
"kind"[-1]   #=> "d"

"check".empty?           #=> false
"check".nil?             #=> false
"check".include?("hec")  #=> true
"check".length           #=> 5
"Check".size             #=> 5

"abc\n" # \n is newline

text = "The quick brown fox jumps over the lazy dog"
result = text.match(/brown/)
puts result[0] #=> "brown"

"just".rjust(7)       #=> "   just"
"just".rjust(7, "-")  #=> "---just"
"just".ljust(7)       #=> "just   "
"just".ljust(7. "-")  #=> "---just"

--------------------

## Array

[1, 2, 3] # Array

[1, 2, 3].join      #=> "123"
[1, 2, 3].join("-") #=> "1-2-3"

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

arr = ["a", "b", "c"]
arr.size            #=> 3
arr.length          #=> 3
arr.count           #=> 3
arr.count("a")      #=> 1     # take individual characters to count
arr.scan("a")       #=> ["a"] # take the whole argument to count

.any?  # return ture if any of the elements in this object pass the test in the block.
.all?  # return true if all of the elements in this object pass the test in the block.
.none? # return true if none of the elements in the object pass the test in the block.

arr = [1, [2, 3], 4]
arr.reverse   #=> [4, [2, 3], 1]
arr.flatten   #=> [1, 2, 3, 4]

arr = [1, 3, 2, 4]
arr.sort  #=> [1, 2, 3, 4]

[1, 2,].product([3, 4]) 
#=> [[1, 3], [1, 4], [2, 3], [2, 4]]

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

arr = [0, 1, 2, 3, 3, 4, 5, nil, 6]
arr.pop        #=> 6        arr = [0, 1, 2, 3, 3, 4, 5, nil]
arr.shift(2)   #=> [0, 1]   arr = [2, 3, 3, 4, 5, nil]
arr.delete_at(3)  #=> 4     arr = [2, 3, 3, 5, nil]
arr.delete(2)     #=> [3, 3, 5, nil]
arr.compact       #=> [3, 3, 5]   # destruvtive: compact!
arr.uniq          #=> [3, 5]      # destructive: uniq!
arr.clear      #=> []
[1, 1, 2, 2, 3, 4] - [1, 4] #=> [2, 2, 3]

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
arr.repeated_permutation(n) # return an array of all possible n-element permutations with repeated elements
array_a & array_b # get items that appear in two arrays at the same time
arr.rotate() #=> [2, 3, 4, 5, 6, 1] () can take length of the rotation 

nes_arr = [[1, 2], [3, 4], [5, 6]]
nes_arr[0][1]     #=> 2
nes_arr[9][0]    #=> NoMethodError
nes_arr[0][9]    #=> nil
nes_arr.dig(9, 9) #=> nil

# Use .dup when you want a shallow copy of an object.
# Use .clone when you want a shallow copy of an object that also preserves the frozen state and singleton methods.

fruits = ["apple", "banana", "cherry", "date", "elderberry"]
index = fruits.index("cherry") #=> 2

most_frequent_value = array.tally.max_by { |k, v| v }.first

--------------------

## Hash

hash_rocket_syntax = {
  :a => 1,
  :b => 2
}

hash_symbol_syntax = {
  a: 1,
  b: 2
}

{ a: 1, b: 2 }.to_a   #=> [[:a, 1], [:b, 2]]

hash.key?(key_name)  #=> return true or false

shoes = {}
shoes["fall"] = "sneakers"  #=> shoes = { "fall" => "sneakers" }

hash_x = { "a" => 100, "b" => 200 }
hash_y = { "b" => 250, "c" => 300 }
hash_x.merge(hash_y)
  #=> { "a" => 100, "b" => 250, "c" => 300 }  # destructive: merge!

shoes = { 
  "summer" => "sandals", 
  "winter" => "boots" 
}
shoes.delete("summer")
  #=> "sandals" # shoes = { "winter" => "boots" }  # destructive


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

## Range

(1..100) # inclusive 
(1...10) # exclusive

random_numbers = rand # generate a random floating-point number between 0 (inclusive) and 1 (exclusive).
random_integers = rand(1..100) # generate a random integer between 1 and 100, inclusive.

range.cover?(value) #=> return true if value falls within the given range

--------------------

## File

File.exist? "file_name" # checks if a file exist at the specified filepath on the filesystem
File.read(file_name) # reads the entire content of the file into a single string
File.readlines # returns an array where each element is a line from the file
File.write(filename, content, options) # writes a content to a file

require "json" # loads library or file by searching for them in the load path
require_relative "my_module" # loads local library or file relative to the current file's path 

File.open(filename, 'w')
  # first parameter: name of the file
  # second parameter: flag that states how will the file be opened
  # 'w' = the file will be open for writing

--------------------

## Dir

Dir.entries(path) #=> returns an array of filenames in the directory, 'path' including '.' and '..'
Dir.foreach(path) { |filename| ... } #=> executes the block for each entry in the directory
Dir.mkdir(path) #=> creates a new directory at the given path
Dir.rmdir(path) #=> removes the directory at the given path
Dir.exist?(path) #=> checks if the directory at the sepcified path exists.
Dir.empty(path) #=> checks if the directory at the specified path is empty.

--------------------

## ERB (Embedded Ruby)

require 'erb' # load ERB
erb = ERB.new(template)
  # create new ERB object, innitilizaing it with privided template
  # template contains HTML-like structure with embedded Ruby code using <%= %>
  # <%= code %> # show output
  # <% code %>  # not show output
output = erb.result(binding)
  # evaluate erb, replacing the placeholders with actual values
  # obtained from the current scope through 'binding'

--------------------

## Date, Time

require 'time'  # load time class
Time.now                #=> current time
Time.now.utc
Time.now.to_i           #=> 1549054305 # generate a time-zone independent timestamp
Time.new (2023, 10, 31) #=> 2023-10-31 00:00:00 +0100
Time.at(15000000000)    #=> #=> 2017-07-14 04:40:00 +0200  # parameter: Unix timestamp
Time.new + 10   # add seconds

time = Time.now
time.day 
time.month
time.hour
time.sunday? # monday? tuesday? wednesday? thursday? friday? Saturday?
time.zone # get timezone

time = Time.new
time.strftime("%d/%m/%Y")         #=> "31/10/2023"
time.strftime("%k:%M")            #=> "16:36"
time.strftime("%I:%M %p")         #=> "04:36 PM"
time.strftime("Today is %A")      #=> "Today is Tuesday"
time.strftime("%d of %B, %Y")     #=> "31 of October, 2023"
time.strftime("Unix time is %s")  #=> "Unix time is 1698744960"

# %d    Day of the month 01..31
# %m    Month of the year 01..12
# %-m   Month of the year 1..12
# %k    Hour 0..23
# %I    Hour 1..12
# %M    Minutes
# %S    Seconds 00..60
# %p    AM/PM
# %Y    Year
# %A    Day of the week
# %B    Month

require 'date' # load Date class
current_date = Date.today
tomorrow = Date.today + 1 
Date.parse("10/10/2010")    #=> 2010-10-10
Date.iso8601("2018-10-01")  #=> 2018-10-01
Date.strptime( your-time-format )

Date::MONTHNAMES # (index 0 = nil)
Date.DAYNAMES # days of the week, starts with Sunday

date.wday #=> number represeting the day of the week (0 = Sunday) 

--------------------

## Regexp

/pattern/ # Regexp literal
Regexp.new("pattern") 

pattern = /hello/
"hello, world" =~ pattern  # Returns the index of the match or nil
"hello, world".match(pattern)  # Returns a MatchData object if there is a match

'^' # matches the start of a line
'$' # matches the end of a line

'[abc]'   # matches any 'a', 'b', or 'c'
'[^abc]'  # matches any character except 'a', 'b', or 'c'

--------------------

## Proc, Lambda

my_lambda = lambda { puts "Hi" }
my_name = ->(name) { puts "Hi, #{name}!" }
my_name.call("John") #=> Hi, John!
my_name.("John")
my_name["John"]
my_name.=== "John"

my_proc = proc { puts "Hi" }
my_info = Proc.new { |name, age| puts "My name is #{name}. I'm #{age} years old." }
my_info.call("John", 17) #=> My name is John. I'm 17 years old. 

  # Lambda will raise an error if the number of parameters expected is not honored.
  # Proc will not. 

  # When you write an explicit return inside a lambda, it returns from the lambda block back to the caller.
  # A proc onject returns from the context in which it is called.

  # Both lambda and proc support default arguments, and can be used as arguments to a method.

--------------------
--------------------

# CORE MODULES

## Enumerable

### Iterate

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

### Iterate and Select

arr.select { |item| code }
  # alt: filter
  # iterate over items, return new collection 
[1, 2, 3, 4, 5].select { |num| num % 2 == 0 }
=> [2, 4]

arr.find { |item| code }  
  # return first item in collection if condition is true
[1, 2, 3].find { |num| num.even? }
=> 2

### Iterate and Modify

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

strings = ["1", "2", "3", "4"]
integers = strings.map { |string| string.to_i }
integers = strings.map(&:to_i) # shorthand

arr.reduce(optional_initial_acc_value) { |accumulator, item| code }
  # alt: .inject  
  # iterate over elements, return accumulator 
votes = ["A", "B", "A"]
votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end
=> {"A"=>2, "B"=>1}

--------------------

## Math

--------------------

## CSV
require "csv" # loads csv module

contents = CSV.open(
  "file.csv", # loads file
  headers: true, # states that the file has a header
  header_converters: :symbol # converts the header names into symbols
  )


--------------------

## Kernel
.binding

--------------------

## JSON

require 'json'
JSON.dump(onject) # serializes a Ruby onject (usually an array of a hash) into a JSON string.
JSON.parse(json_string) # deserializes a JSON string into a Ruby object.

--------------------
--------------------

# CLASS AND OBJECT

123.class #=> Integer
  # check the class of the object

Array.ancestors #=> [Array, Enumerable, Object, Kernel, BasicObject]
  # Array, Object, and BasicObject are classes.
  # Array inherits from Object and Object inherits from BasicObject.
  # Enumerable and Kernel are modules.
  # The Enumerable module is included in the Array class
  # and the Kernel module is mixed-in to the Object class

"hi".methods() #=> an array of the methods that the object can use

ClassName.new() # syntax for createing an object

## Basic syntax

class Animal # superclass
  def greet
    puts "Hello!"
  end
end

class Cat < Animal # subclass
  include Swimmable # mixing in Swimmable module

  @@number_of_cats = 0

  attr_accessor :name :gender # attr_reader + attr_writer

  def initialize(n, g)
    @@number_of_cats += 1
    @name = n
    @gender = g
    puts "Initialized!"
  end

  def self.total_number_of_cats
    @@number_of_cats
  end

  def change_info
    self.name = n
    self.gender = g
  end

  def greet 
    super + " from Cat class"
  end
end

rusty = Cat.new("Rusty", "female")   #=> "Initialized!"
rusty.speak   #=> "Hello! from Cat class"
rusty.name    #=> "Rusty"
rusty.gender  #=> "female"
rusty.change_info("Sparky", "male")

module Swimmable
  def swim
    "I'm swimming!"
  end  
end

## Namespacing: organizing similar classes under a module

module Mammal
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end
end

buddy = Mammal::Dog.new
kitty = Mammal::Cat.new
buddy.speak("Arf!")     #=> "Arf!"
kitty.say_name("kitty") #=> "kitty"

## Using module as a container for methods

module Mammal
  def self.some_out_of_place_method(num)
    num ** 2
  end
end

value = Mammal.some_out_of_place_method(4)

## Private methods:
  # can only be called within the class that defines them
## Protected methods: 
  # can be called by instances of the same class and its subclasses
  # can be accessed from within the class itself and any subclass of that class
  # other objects or instances from outside the class hierarchy cannot directly call protected methods
class MyClass
  def my_public_method
    # code
  end

  protected

  def my_protected_method
    # code
  end

  private

  def my_private_method
    # code
  end
end

class MySubClass < MyClass
  def access_protected
    my_protected_method
  end
end

MyClass.new.my_publlic_method
MyClass.new.my_protected_method # not allowed
MyClass.new.my_private_method # not allowed
MySubClass.new.access_protected

--------------------
--------------------

# Block

def love_language
  yield('Ruby')
  yield('Go')
end

love_language { |lang| puts "I love #{lang}" }
#=> I love Ruby
#=> I love Go

def explicit_block(&block)
  block.call # same as yield
end

explicit_block { puts "explicit block called" }

def maybe_block
  if block_given?
    puts "block party"
  end

  puts "executed regardless"
end

maybe_block
#=> executed regardless

maybe_block {}
#=> block party
#=> executed regardless

--------------------
--------------------

# Others

## Shorthand to swap two values 
i, i+1 = i+1, i

## Exception
begin
  # code that might raise an exception
rescue
  # code to handle the exception
end

# shorhand
choice = gets.chomp
command, number = choice.split






