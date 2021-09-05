def get_minimum_integer_not_on_list(num_list_sort)
	if num_list_sort.empty? || num_list_sort.min > 1
		return 1
	end

	min_num = 0

	num_list_sort.each_with_index do |num, index|
		next min_num = num + 1 if index == 0 || (num - num_list_sort[index -1]) == 1 
		break
	end
	min_num
end

def get_sort_num_list(input_array)
	input_array.select { |num| num > 0 }.uniq.sort
end

def solution(input_array)
  num_list_sort = get_sort_num_list(input_array) 
	get_minimum_integer_not_on_list(num_list_sort)
end