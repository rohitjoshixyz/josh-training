assignment_name = "Exponentor"
puts "Assignment: "+ assignment_name
puts 2 ** 3 ** 2 #a^(b^c)
puts 2 ** (2 * 2 * 3) #(a^b)^c
base = 2
expo = 3
exponentor1 = -> (base, expo){ base ** expo }
exponentor2 = -> (base, expo1, expo2){ exponentor1.call(base, expo1) ** expo2 }
exponentor3 = -> (base, expo1, expo2, expo3){ exponentor2.call(base, expo1, expo2) ** expo3 }

simple_exponentor = -> (base, expo1, expo2, expo3) { base ** expo1 ** expo2 ** expo3 }
puts "Simple exponentor: " +  simple_exponentor.call(2,2,2,3).to_s
#=> 115792089237316195423570985008687907853269984665640564039457584007913129639936
puts "Our Exponentor: " + exponentor3.call(2,2,2,3).to_s
#=> 4096