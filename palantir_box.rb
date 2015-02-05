def main() #creates default grid with user input 
	$rows, $cols = gets.split(" ").map(&:to_i)

		if not $rows.between?(1,100000) #these handle the input constraints 
			abort
		end

		if not $cols.between?(1,500)
			abort
		end


	$grid = Array.new($rows) { Array.new($cols, 't') } #creates the matrix of row x column 


	$col_count = 0 # external var to track columns 

	$rows.times do |row| #will loop for each row, asking for input 
			$col_count = 0  #reset for each row 

	      input = gets.chomp.split("") # t t p given input will put into array to be put back into default $grid 

	      input.each do |col|
	      	$grid[row][$col_count] = col
	      	$col_count += 1
	      end
	  
	end

end


def score () #this will count the number of wishes given with user matrix
	$score = 0 
	
	
	counter = $rows 

	counter.times do |x| #check each row for wish "if all are T or P "
		
		
		if $grid[x].uniq!.count <= 1
			$score += 1
		end
	end
	puts "#{$score}"
end






def flipper() #this will flip each column 
	$score = 0 
	
	$col_flip
	counter = $rows 

	counter.times do |x| #check each row for wish "if all are T or P "
		
		
		if $grid[x].uniq!.count <= 1
			$score += 1
		end
	end
	puts "#{$score}"


end




main()
score()

#flipper is incomplete last method and ran out of time :(


given a magic box
of row x column dimensions

in P or T values
flip each box to give a line of the same variable eg. all T or all P
such that the matrix has the maximum possible number of complete P or T rows 

eg. 

PTP
PTP
PPP* = 2 wishes (denoted by star)
TPT
PPP*  -> flip column 2

PPP
PPP
PTP
TTT
PTP = 3 wishes


