var = 0, least = 101
max_sz = gets.chomp.to_i
if max_sz < 1 || max_sz > 100 || max_sz%2 !=1
	abort
end
num_list = gets.chomp.split(" ").map(&:to_i)
good_list = num_list[0...max_sz]
good_list.each do |x| #loop through 
	temp = good_list.count(x)
	if temp < least
		least = temp
		var = x
	end
end
puts var