class Calculator  

  def self.add(nums)
    total = 0
    nums.split(",").each do |number|

      if number == ""
        next    
      else
        total += number.to_i
      end

    end
    total
  end 

end

