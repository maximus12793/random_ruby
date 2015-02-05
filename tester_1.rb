# number of trials

t = gets.chomp.to_i
n = []

t.times do |i|
	n[i] = gets.chomp.split('').map(&:to_i).to_a
end

puts "#{n}"
a = n[0].length
nct = 0
@place = 1 

# n[0..4].reverse!
# puts "place 1 #{n[1].reverse!}"
# puts "size: #{n[1].size}"
# puts "place 2: #{n[1][2]}, place 0-3: #{n[0][0..3].reverse!}"
puts "#{n[0].length}"


# n.map(&:to_i).to_a
# begin
# 	n[0][1..3].reverse!
# 	@place +=1
# 	puts "i am here"
# end  

val = n[nct][nct..3].reverse!
# n.delete(0..3)
n << val.map(&:to_i)


puts "altered #{n}"





