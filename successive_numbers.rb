# Enter your code here. Read input from STDIN. Print output to STDOUT

$fix_val = 0 
$diff_val = 0
$new_diff 


def start()
	n = gets.chomp.to_i
	m =[]
	n.times do |i|
		m[i] = gets.chomp.split.map(&:to_i).to_a
	end

	
	m.sort!

	$diff_val = m[1].first-m[0].first
	

	m.each_index do |x| 
		begin 
		current_ele = m[x]
		next_ele = m[x+1]
		$new_diff = (current_ele.first - next_ele.first).abs	

		if $new_diff != $diff_val
			# puts "not linear increase!"
			$temp = ($diff_val-$new_diff).abs
			$add_val = current_ele.first + $temp
			m.push($add_val)
		end

		
		rescue NoMethodError # you can also add this
	      	# puts "error is undefined in both inner and outer classes"
	    end	
	end

	m.flatten!
	m.sort!

	g = m.join(' ') 

	puts "#{g}"
end




start()



# 5
# 1 3 5 9 11
# returns 7
