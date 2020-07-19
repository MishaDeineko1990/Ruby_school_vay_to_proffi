# persson=%w[misha sergiy valia natasha dania vasia tania olia bogdan alla]
# num=1
# persson.each do |ell ll|
#     puts "#{ll}: #{ell[1..-2]}."
#     num=num+1
# end

persson=%w[misha sergiy valia natasha dania vasia tania olia bogdan alla]
persson=persson[1..-2]
num=1
persson.each do |ell|
    puts "#{num}: #{ell}."
    num=num+1
end