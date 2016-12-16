def encrypt(string, shift)
	new_string = ""
	chars = string.split("")			
	chars.each do |i|
	  ascii = i.ord + shift			
		if(i.ord > 64 && i.ord < 91)				
			if(ascii > 90)
				new_string  += (ascii - 26).chr
		  elsif ascii < 65
		  	new_string += (ascii + 26).chr
		  else
		  	new_string += ascii.chr
		  end
		elsif i.ord > 96 && i.ord < 123
			
			if(ascii > 122)
				new_string += (ascii - 26).chr
			elsif ascii < 97
				new_string += (ascii + 26).chr
			else
				new_string += ascii.chr
			end
		else
			new_string += i
		end						
	end	
		
	new_string
end

def unencrypt(string, shift)
	encrypt(string, -shift)
end





