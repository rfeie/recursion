def fib(num)
	fib_nums = [0, 1]
	return [] if num < 1
	return [0] if num == 1
	(num-2).times do 
		fib_nums << fib_nums[-1] + fib_nums[-2]
	end
	fib_nums
end

def fibs_rec(num, fib_nums = [])
	return [0] if num < 2
	return [0, 1] if num == 2
	fib_nums = fibs_rec(num - 1, fib_nums) 
 	fib_nums << fib_nums[-1] + fib_nums[-2]

end

puts fibs_rec(0).to_s
puts fib(0).to_s
puts fibs_rec(1).to_s
puts fib(1).to_s
puts fibs_rec(2).to_s
puts fib(2).to_s
puts fibs_rec(5).to_s
puts fib(5).to_s
puts fibs_rec(20).to_s
puts fib(20).to_s