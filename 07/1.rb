print "Яку суму ти плануєш відкладувати: "
summ=gets.to_f
print "Скільки років ти плануєш відкладувати: "
ear=gets.to_i
oll_nall=0


1.upto(ear) do |er|
	1.upto(12) do |mm|
		oll_nall=oll_nall+summ
		puts "рік #{er} місяць #{mm} накопичено #{oll_nall}"
	end
end
