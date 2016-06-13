
class BinarySearch

  def initialize(array, element)
    @array = array
    @element = element
  end

  def find
    sorted = @array.sort
    low = 0
    high = @array.size - 1
    middle = (low + high) / 2
    while test = sorted[middle]
      
     # puts ":::#{high} :::::#{middle}:::::::: #{low}::#{@element.size}"
      
      if test > @element
        high -= 1
      elsif test < @element
        low += 1
      else
        return true
      end
      
      middle = (low + high) / 2
     
    end
    return false
  end
  
  def find_element
      sorted=@array.sort
      low=0
      high=@array.size-1
      middle=low+(high-low)/2
      index="Element not Found"
	
      while low<=high
	  test=sorted[middle]

	if test == @element
	  index="Element found at position #{middle}"
	  break;
	elsif test > @element
	  high=middle-1
	elsif test < @element
	  low=middle+1
	end 
	 
	 middle=low+(high-low)/2
	 
      end 
       return index
   end 
 
end

@obj = BinarySearch.new([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15], 8)
@obj.find
result = @obj.find
puts result
puts @obj.find_element