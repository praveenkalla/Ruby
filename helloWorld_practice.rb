# Variables #
name="Bob"
age= 23
counter=     #false and nil decalres false by default*

# Methods #
def string_length_interpolater(incoming_string)
  "The string you just gave me has a length of #{incoming_string.length}"
end


def check_sign(number)
  if number > 0
    "#{number} is positive"
  elsif number==0
    "#{number} is considered to be neither positive nor negative"
  else
    "#{number} is negativeeeeeeeeeeeeeeeeeeeeeeee"
  end        
end


def check_sign(number)
  number > 0 ? "#{number} is positive" : "#{number} is negative "   #conditional operator
end


def ring(bell, n)
  n.times do
    bell.ring
  end
end 


def array_copy(source)
    destination=[]

    for i in source                   # source.each do |i|   alternative using each iteration
       destination.push(i) if (i>4)    # destination << i if i < 4 alternative using << append
    end
  return destination  
end  

def artax
  a = [:punch, 0]
  b = [:kick, 72]
  c = [:stops_bullets_with_hands, false]
  key_value_pairs = [a, b, c]
  Hash[key_value_pairs]
end




print "Hello, World!\n"
print 2.even?
print "\n"
print 2.next.next 
print "\n"
print 1.methods.sort
print "\n"
print ['rock','paper','scissors'].index('paper')
print "\n"
print 2.between? 1,3
print "\n"
words=[1,2,3,4]
puts words[1]
print '\n'     #"\n" - taken as a new line '\n'- taken as a string
words = ["foo", "bar", "baz"]
puts words.[](1)
puts 'Ruby Monk' " Ruby Monk"
puts 'Ruby Monk'.length
a = 1
b = 4
puts "The number #{a} is less than #{b}"
puts string_length_interpolater("Hai there.............")
puts "Hi There how are you".include?"There"       #search value in a string
puts "Hi There how are you".start_with?"There"
puts "Hi There how are you".index 'are'
puts 'i am in lowercase'.upcase #=> 'I AM IN LOWERCASE'
puts 'i am in LOWERCASE'.downcase #=> 'I am in lowecase
puts "ThiS iS A vErY ComPlEx SenTeNcE".swapcase
puts 'Fear is the path to the dark side'.split'path'
puts "Ruby""Monk"
puts "Ruby".concat"Monk"          #.concat("Monk") or .concat"Monk"
puts "I should look into your problem when I get time".sub('I','We')
puts "I should look into your problem when I get time".gsub('I','We')   #global scope
puts 'RubyMonk'.gsub(/[aeiou]/,'1') # regular expresssion
puts 'RubyMonk Is Pretty Brilliant'.gsub(/[A-Z]/,'0')
puts 'RubyMonk Is Pretty Brilliant'.match(/ ./, 9)  # matches string with space and position 
puts name == "Bob"  #Ruby uses the == operator for comparing two objects.
puts age >= 23 && (name == 'Bob' || name == 'Jill')

# 2.1 The if..else construct #

puts check_sign(0)

unless age >= 18   #unless x is equivalent to if !x
puts "Sorry, you need to be at least eighteen to drive a car. Grow up"
else
puts "You are grown up to drive a car"
end
puts check_sign(-10)

if counter
  puts "Hey, 0 is considered to be a truth in Ruby"   #Truthiness of objects in Ruby 
else
    puts "Hey, 1 is considered to be a false in Ruby"   #Truthiness of objects in Ruby 
end

monk="praveen"
# 2.2 Loops in Ruby #
5.times do
    puts "do loop for 5 times"
  end

# 3 Arrays
  
[]         ## creation of new array
Array.new  ## creation of new array 
arr= [1, 'one',2,'two', 3,'three', 4,'four', 5,'five']
puts arr
puts arr [2]  #gets the third value in the array 
puts [1, 2, 3, 4, 5, 6, 7][4] # the nth value in an array has an index of n-1
puts [1, 2, 3, 4, 5][-5]   #fetching elements in the reverse order of an array start index is -1
#puts [1, 2, 3, 4, 5]<<'woot' ##the size of an array is not fixed
puts [1, 2, 3, 4, 5].push("push")  #altenative to append command

# 3.1 Basic Array Operations
puts "Map"
puts [1, 2, 3, 4, 5].map { |i| i + 1 } #map is used to transform the contents of an array 
puts [1,2,3,4,5,"woo"].map{|i|i*3} #multiplies the string chars and prints ex:'he'*2 results: hehe
puts [1,2,3,4,5,"woo2"].select{|i|i%2==0} # select method to filter the elements of an array.

names = ['rock', 'paper', 'scissors', 'lizard', 'spock']
puts names.select {|word| word.length > 5}
puts [1,2,3,4,5,6].delete 1  # delete elements from the array
puts [1,2,3,4,5,6,7].delete_if{|i| i < 4 }

# 3.2 Iteration

puts "----- Iteration ---------"
array=[1,2,3]
for i in array
    puts i
end  

puts array_copy([2,4,6,8,7,9])

array.each do |i|   #each is the for each element  looping with each
  puts i
end

# 4.0 Introduction to Ruby Hashes

restaurant_menu = {}    # creating a new hash map 
restaurant_menu = {      #hash map
  "Ramen" => 3,
  "Dal Makhani" => 4,
  "Tea" => "Sugar less Tea"
}
restaurant_menu["Dal Makhani"] = 4.5  #adding elements into the map 
puts restaurant_menu["Tea"] # fetches single element
puts restaurant_menu.keys   #fetches available key elements

normal = Hash.new               #defines a nil attribute
was_not_there = normal[:zig]
puts "Wasn't there:"
p was_not_there

usually_brown = Hash.new("brown")
pretending_to_be_there = usually_brown[:zig]
puts "Pretending to be there:"
p pretending_to_be_there
chuck_norris = Hash[:punch, 99, :kick, 98, :stops_bullets_with_hands, true]
p chuck_norris
p artax

# 5.0 Classes

p 1.class
p "".class
p [].class
puts 1.is_a?(Integer)
puts 1.is_a?(String)
p 1.class.class
p Object.new

# 5.1 Building your own class


class Rectangle
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def perimeter
    2 * (@length + @breadth)
  end

  def area
    @length * @breadth
  end
end

rect= Rectangle.new(4,4)   # creation of new object for the class
p rect.area                # method invocation of the class
p Rectangle.new(5,5).perimeter

# 6.1 Being Methodical

def reverse_sign(an_integer)  # Ruby doesn't allow us to use spaces in method names and as a convention, method names be in lower case.
  return 0 - an_integer       # If no return keyword is specified, the object created by the last line in the method is automatically treated 
			      # as the return value. 
end

puts reverse_sign(100)
puts reverse_sign(-5)

def do_nothing
end

puts do_nothing.class

# 6.2 Calling a method

def add(a_number=0, another_number=0, yet_another_number=0)
  a_number + another_number + yet_another_number
end

puts add(1, 2)
puts add(1, 2, 3)
puts add()


def say_hello(name = "Ruby")
  "Hello, #{name}."
end
p say_hello

# Arraying your arguments

def add(*numbers)   #*- SPLAT OPERATOR
  numbers.inject(0) { |sum, number| sum + number }
end

puts add(1)
puts add(1, 2)
puts add(1, 2, 3)
puts add(1, 2, 3, 4)

#The splat operator works both ways - you can use it to convert arrays to parameter lists as easily as we just converted a parameter list to an array.

def add(*numbers)
  numbers.inject(0) { |sum, number| sum + number }
end

def add_with_message(message, *numbers)
  "#{message} : #{add(*numbers)}"
end

puts add_with_message("The Sum is", 1, 2, 3)


def introduction(age, gender, *names)
  "Meet #{names.join(' ')}, whos's #{age} and #{gender}"
end  

puts introduction(28,"Male", "Praveen","Kumar","Kalla")


# Naming parameters


def add(a_number, another_number, options = {})
  sum = a_number + another_number
  sum = sum.abs if options[:absolute]
  sum = sum.round(options[:precision]) if options[:round]
  sum
end

puts add(1.0134, -5.568)
puts add(1.0134, -5.568, absolute: true)
puts add(1.0134, -5.568, absolute: true, round: true, precision: 2)

def add(*numbers)
  numbers.inject(0) { |sum, number| sum + number }  
end

def subtract(*numbers)
  current_result = numbers.shift
  numbers.inject(current_result) { |current_result, number| current_result - number }  
end

def calculate(*arguments)
  # if the last argument is a Hash, extract it 
  # otherwise create an empty Hash
  options = arguments[-1].is_a?(Hash) ? arguments.pop : {}
  options[:add] = true if options.empty?
  return add(*arguments) if options[:add]
  return subtract(*arguments) if options[:subtract]
end


p add(4, 5) 
p add(-10, 2, 3)  
p add(0, 0, 0, 0) 
p subtract(4, 5) 
p subtract(-10, 2, 3) 
p subtract(0, 0, 0, 0, -10)
p calculate(4, 5, add: true) 
p calculate(-10, 2, 3, add: true) 
p calculate(0, 0, 0, 0, add: true) 
p calculate(4, 5, subtract: true)
p calculate(-10, 2, 3, subtract: true)
p calculate(0, 0, 0, 0, -10, subtract: true)

# 7 Lambdas is just a function... peculiarly... without a name
l = lambda { "Do's & Dont's" }
puts l.call

l = lambda do |string|
  if string == "try"
    return "There's no such thing" 
  else
    return "Do or do not."
  end
end
puts l.call("try") # Feel free to experiment with this

Increment= lambda{|number| number.next}
p Increment.call(1)

# Lambdas vs. Blocks
# A lambda is a piece of code that you can store in a variable, and is an object. The simplest explanation for a block is that it is a piece of code that can't be stored in a variable and isn't an object. It is, as a consequence, significantly faster than a lambda, but not as versatile and also one of the rare instances where Ruby's "everything is an object" rule is broken.

def demonstrate_block(number)
  yield(number)     #yield keyword calls the single lambda that has been implicitly passed to a method without using the parameter list
end

puts demonstrate_block(1) { |number| number + 1 }


def calculate(a,b)
  yield(a,b)
end

puts calculate(4,3) {|a,b| a+b}
puts calculate(4,3) {|a,b| a-b}

# 8.1 Getting Modular   
#Modules: Since a module cannot be instantiated, there is no way for its methods to be called directly. Instead, it should be included in another class, which makes its methods available for use in instances of that class. There is, of course, more to this story, but let's keep it simple for now.

module Warmup
  def push_ups
     puts "Do 100 push ups"
  end  
end

class Gym
  include Warmup
  
 def pull_ups
    puts "Do 100 pull ups"
 end  
end

class Member
  include Warmup
  
  def do_it
    puts "Do the schedule"
  end
end
  
puts Member.new.push_ups
puts Gym.new.push_ups

# 8.2 Modules as Namespaces

module Perimeter
  class Array
    def initialize
      @size = 400
    end
  end
end

our_array = Perimeter::Array.new
ruby_array = Array.new

p our_array.class
p ruby_array.class

# How do you create a class level instance method? the side attribute accessor methods to the class level rather than the instance level

class Polygon
  class << self; attr_accessor :sides end
  @sides = 8
end

puts Polygon.sides # => 8

####################### Meta Programming ######################################

class Array
  def foldl(method)
    inject {|result, i| result ? result.send(method, i) : i }
  end
end

puts [1000.0, 200.0, 50.0].foldl("/") # Feel free to experiment with this


class SetInStone
 #empty class
end

class SetInStone
 def everything_changes
    return "Wait, what? You just added a method to me!"
 end
end

puts SetInStone.new.everything_changes

# 1.0 Just what does #send do?

class Glider
  def lift
    puts "Rising"
  end
  
  def bank
    puts "Turning"
  end
end

class Nomad
  def initialize(glider)
    @glider = glider
  end

  
  def do1(action)
    if action == 'lift'
      @glider.lift
    elsif action == 'bank'
      @glider.bank
    else
      raise NoMethodError.new(action)
    end
  end
  
  
  def do(action)
#Ruby gives a convenient way for you to call any method on an object by using the send method. send takes, as its first argument, the name of the method that you want to call.    
      @glider.send(action) 
  end
end

nomad = Nomad.new(Glider.new)
nomad.do("lift")
nomad.do("bank")


class Initiate
  def initialize(secretive_monk)
    @secretive_monk = secretive_monk
  end
  
  def	meaning_of_life
    # change this line to sneakily call `meaning_of_life`, even though
    # it is a private method.
    @secretive_monk.send(:meaning_of_life)
  end
end


# Relay Messages
def relay(array, data_type)
  array.map {|s| s.send("to_#{data_type}") }
end


# 1.1 Method Missing    syn: method_missing(sym, *args, &block).                           
class Spy
  def method_missing(sym)
    puts "#{sym} method missing called"
  end
end

spy= Spy.new
puts spy.test

# Passing Arguments
class Spy
  def method_missing(sym,*arr)
    puts "method missing called #{sym}"
    puts arr
  end
end

spy= Spy.new
puts spy.test
puts spy.test("you","bleddy","rascal")

# Blocks
class Spy
  def method_missing(sym, *args, &block)
    puts "#{sym} was called with #{args} and #{block}"
  end
end


# Remove_method and undef_method

#To remove existing methods, you can use the remove_method within the scope of a given class. If a method with the same name is defined for an ancestor of that class, the ancestor class method is not removed. The undef_method, by contrast, prevents the specified class from responding to a method call even if a method with the same name is defined in one of its ancestors.


class Rubyist
  def method_missing(m, *args, &block)
    puts "Method Missing: Called #{m} with #{args.inspect} and #{block}"
  end

  def hello
    puts "Hello from class Rubyist"
  end
end

class IndianRubyist < Rubyist
  def hello
    puts "Hello from class IndianRubyist"
  end
end

obj = IndianRubyist.new
obj.hello # => Hello from class IndianRubyist

class IndianRubyist
  remove_method :hello  # removed from IndianRubyist, but still in Rubyist
end
obj.hello # => Hello from class Rubyist

class IndianRubyist
  undef_method :hello   # prevent any calls to 'hello'
end
obj.hello # => Method Missing: Called hello with [] and


# Define method


class Doctor
  define_method("perform_rhinoplasty") do |argument|
        "performing rhinoplasty on #{argument}"
  end
 
  define_method("perform_checkup") do |argument|
        "performing checkup on #{argument}"
  end
  
  define_method("perform_interpretive_dance") do |argument|
    "performing interpretive dance on #{argument}"
  end
end
 

doctor = Doctor.new
puts doctor.perform_rhinoplasty
puts doctor.perform_rhinoplasty("nose")
puts doctor.perform_checkup("throat")
puts doctor.perform_interpretive_dance("in da club")



















