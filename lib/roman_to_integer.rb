def roman_to_integer num
	length = num.length - 1
	cur = 0
	int = 0
	
	hash = {'m'=>1000, 'd'=>500, 'c'=>{:value=>100, :options=>{'d'=>300, 'm'=>800}}, 'l'=>50, 'x'=>{:value=>10, :options=>{'l'=>30, 'c'=>80}}, 'v'=>5, 'i'=>{:value=>1, :options=>{'v'=>3, 'x'=>8}}}
	while cur <= length
		new_num = hash[num[cur]]
		next_num = num[cur + 1] unless cur >= length
		if new_num.is_a?(Hash)
			int += new_num[:value]
			int += new_num[:options][next_num] if new_num[:options].key?(next_num)
			cur += 1 if new_num[:options].key?(next_num)
		else
			int += new_num
		end
		cur += 1
	end
	int
end