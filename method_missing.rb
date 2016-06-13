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



















