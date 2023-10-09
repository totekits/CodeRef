# inline comment

=begin
block comment
cannot be indented
=end

file_variable_method

CONSTANT

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


#EQUALITY

4 == 4 #=> true
"4" == 4 #=> false
"abc" == "abc" #=> true
nil == false #=> false


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

"string".capitalize #=> "Hello"
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



