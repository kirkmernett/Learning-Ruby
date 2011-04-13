#Method for numbers over 999
def big_num var, str
	num = eng_convert var
	num = num + ' ' + str
	num
end

def eng_convert num
	#Weeds out blank or string entries
	if num.to_s.to_i.to_s != num.to_s
		return 'Please enter a number'
	end
	
	#Figures out how many of each place there are
	trils = num                /1000000000000
	bills = num % 1000000000000/   1000000000
	mills = num % 1000000000   /      1000000
	thous = num % 1000000      /         1000
	hunds = num % 1000         /          100
	tens  = num % 100          /           10
	ones  = num % 10
	
	#Arrays for Tens, Teens, and Ones
	eng_tens  = ['Ten', 'Twenty', 'Thirty', 'Fourty', 'Fifty', 'Sixty', 'Seventy', 'Eighty', 'Ninety']
	eng_teens = ['Eleven', 'Twelve', 'Thirteen', 'Fourteen', 'Fifteen', 'Sixteen', 'Seventeen', 'Eighteen', 'Nineteen']
	eng_ones  = ['', 'One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine']
	
	#Introduces eng_num variable and sets to Zero if needed
	if num == 0
		eng_num = 'Zero'
	else
		eng_num = ''
	end
	
	#Adds Trillions, Billions, Millions, and Thousands
	eng_num = eng_num + (big_num trils, 'trillion') + ', ' unless trils <= 0
	eng_num = eng_num + (big_num bills, 'billion')  + ', ' unless bills <= 0
	eng_num = eng_num + (big_num mills, 'million')  + ', ' unless mills <= 0
	eng_num = eng_num + (big_num thous, 'thousand') + ', ' unless thous <= 0
	
	#Adds Hundreds
	eng_num = eng_num + eng_ones[hunds] + ' hundred ' unless hunds <= 0
	
	#Adds Tens & Ones
	if tens == 1 && ones > 0
		eng_num = eng_num + eng_teens[ones - 1]
	else
		if tens > 0
			eng_num = eng_num + eng_tens[tens - 1]
			eng_num = eng_num + '-' unless ones <= 0
		end
		eng_num = eng_num + eng_ones[ones]
	end
	
	eng_num
end