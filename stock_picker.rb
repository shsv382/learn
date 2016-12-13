#!usr/bit/env ruby
def stock_picker(dcst)
		
		pair = Array.new
		dcst_save = Array.new
		dcst.each { |x| dcst_save << x }
		div = Array.new
		b = 0
		for i in 0..(dcst.length - 2)
			for j in (i + 1)..(dcst.length - 1)
				a = dcst[j] - dcst[i]
				div << a
				if div.max > b
					b = div.max
					pair[0] = i
					pair[1] = j
				end
			end
		end
pair
end

puts stock_picker([9,8,7,6,7])