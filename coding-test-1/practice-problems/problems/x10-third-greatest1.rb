# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

def third_greatest(nums)
	# If can use Array#sort:
	# sorted = nums.sort
	# sorted[-3]
	# If can't use Array#sort:
	one = 0
	two = 0
	three = 0

	nums.length.times do |i|
		if nums[i] > one
			three = two
			two = one
			one = nums[i]
		elsif nums[i] > two
			three = two
			two = nums[i]
		elsif nums[i] > three
			three = nums[i]
		end
	end
	return three
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'third_greatest([5, 3, 7]) == 3: ' +
  (third_greatest([5, 3, 7]) == 3).to_s
)
puts(
  'third_greatest([5, 3, 7, 4]) == 4: ' +
  (third_greatest([5, 3, 7, 4]) == 4).to_s
)
puts(
  'third_greatest([2, 3, 7, 4]) == 3: ' +
  (third_greatest([2, 3, 7, 4]) == 3).to_s
)
