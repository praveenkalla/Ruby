# 2a. Write a parent, child class and make sure how inheritance works

module Employer
  
  def salary
     puts "Salary credited" 
  end
  
end  


class Manager
  include Employer
    attr_accessor:bugs
    
  def issues
    "Manager #{bugs} bugs found"
    
  end
end  


class Developer < Manager
  
  def issues
    
    "Developer Resolved #{bugs} bugs"
    
  end
  
end


class Tester < Manager

  def issues
    
    "Tested #{bugs} bugs"
    
  end
  
end

mag= Manager.new
dev= Developer.new
mag.bugs=1000
dev.bugs=500

puts  mag.issues
puts  dev.issues
puts dev.salary
#puts Manager.class_variables # => @@sides
#puts Manager.instance_variables # => @sides


