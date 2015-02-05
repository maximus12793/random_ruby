
string = gets.chomp 
arry = []

# Assign found a value of 1 or 0 depending on whether or not you found what you were looking for.
arry = string.split('')
arry = arry.sort

eachLT=arry.uniq #one of each letter to test 

even_ct = 0 
odd_ct = 0 
pos = 0 

#[a,b,b,b,b,d,d,a,a]
#LT = a b d 

eachLT.each do |i|
	evenodd = arry.count(i)
	# puts arry.count(i).to_s + "number of #{i}"

	if evenodd % 2 == 0 
		even_ct +=1 
	else 
		odd_ct +=1
	end
end


if odd_ct <=1
	puts "YES"
else 
	puts "NO"
end




# sum of all odd and even letter counts
# only one set of odd letters 