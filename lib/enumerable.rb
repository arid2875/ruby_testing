module Enumerable

	def my_each(&block)		
		
		0.upto(self.length-1) {|index| yield(self[index]) if block_given?}		
		
		return self
	end

	def my_each_with_index
		0.upto(self.length-1) {|index| yield(self[index], index) if block_given?}

		return self
	end

	def my_select

		if block_given?
			new_array = []
			self.my_each {|item| new_array << item if yield(item)}									
			return new_array
		else
			return self
		end					
	end

	def my_all?		
		my_bool = true
		self.my_each do|item| 
			if !yield(item) 
				my_bool = false
			end
		  return my_bool
		end
	end

	def my_any?

		my_bool = false
		
		self.my_each {|item| my_bool = true if yield(item)} if block_given?
		
		my_bool		
	end

	def my_none?

		my_bool = true
		
		self.my_each {|item| my_bool = false if yield(item)} if block_given?			
		
		my_bool	
	end

	def my_count
		count = 0
		self.my_each {|item| count += 1 if yield(item)}
		count
	end

	def my_map(some_proc)
		new_array = []
		self.my_each do |item|
			if block_given? 			
				new_array << yield(item)
			else
				new_array << some_proc.call(item)
			end	
		  new_array
		end
	end

	def my_inject(start=0)		
		if block_given?
			total = start							
			self.my_each {|item| total = yield(total, item)}
			return total
		else
			puts "Error!! No Block Given!!"
		end		
	end

	def multiply_els
		self.my_inject(1) {|total, index| total * index}
	end
	
end