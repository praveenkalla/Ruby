

module Week
   FIRST_DAY = "Sunday"
   def Week.weeks_in_month
      puts "You have four weeks in a month"
   end
   def Week.weeks_in_year
      puts "You have 52 weeks in a year"
   end
end




class Decade
include Week
   no_of_yrs=10
   def no_of_months
     number=10*12
      puts number
   end
end
d1=Decade.new
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year
d1.no_of_months


# Mixins in Ruby:

module A
   def A.a1
     puts "A1 method"
   end
   def a2
     puts "A2 method"
   end
end
module B
   def B.a1
     puts "B1 method"
   end
   def b2
     puts "B2 method"
   end
end

class Sample
include A,B

   def s1
   end
end

class Sample1 
  extend A,B                #Extend makes module methods as Class Methodds
   def s1
   end
end


samp=Sample.new
A.a1
samp.a2
B.a1
samp.b2
samp.s1
Sample1.a2
Sample1.b2

