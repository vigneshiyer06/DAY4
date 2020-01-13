#Simple calculator

begin

puts "Welcome to the calculator\n Choose from the following options\n 1.Sum\n 2.Subtract\n 3.Multiply\n 4.Divide\n 5.Exit\n"
a=gets.chomp.to_i

case (a)
	when 1
		puts" Enter 2 numbers to add\n"
		b=gets.chomp.to_i
		c=gets.chomp.to_i
		puts "Answer= #{c+b}"
	when 2
		puts" Enter 2 numbers to subtract\n"
		b=gets.chomp.to_i
		c=gets.chomp.to_i
		d=b-c
		puts "Answer= #{d}"
	when 3
		puts" Enter 2 numbers to multiply\n"
		b=gets.chomp.to_i
		c=gets.chomp.to_i
		puts "Answer= #{c*b}"
	when 4
		puts" Enter 2 numbers to divide\n"
		b=gets.chomp.to_i
		c=gets.chomp.to_i
		puts "Answer= #{c/b}"
	else 
		puts"Thank You"
end

end while(a!=5)
