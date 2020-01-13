#Operations on numeric array

class Optr
	attr_accessor :a1
	def initialize
		a1=[10]
	end
	def optr
		begin
			puts "Welcome to the program\nChoose from the following options\n1.Add value\n2.Minimum\n3.Maximum\n4.Sum\n5.Average\n6.Search\n7.Display\n8.Delete value by index\n9.Delete value\n10.exit\n"	
			a=gets.chomp.to_i
			case (a)
				when 1
					puts "Enter value to enter\n"
					b=gets.chomp.to_i
					a1.push(b)
				when 2
					a1.sort
					puts a1.first
				when 3
					a1.sort
					puts a1.last
				when 4
					
					puts "Sum=#{a1.sum}"
				when 5
					
					puts "Average=#{a1.sum/a.size}"
					
				when 6
					puts"Enter the value to search\n"
					b=gets.chomp.to_i
					puts a1.include?(b)
					
				when 7
					puts a1
				when 8
					puts "Enter the position of the value to be deleted\m"
					b=gets.chomp.to_i
					a1.delete_at(b+1)
					
				when 9
					puts"Enter the value to be deleted"
					b=gets.chomp.to_i
					a1.delete(b)
				else 
					puts "Thank you"
				end
		end while (a!=10)
	end
end

c=Optr.new
puts "Enter 10 numbers\n"
b=[]
for i in 0...9 do
b[i]=gets.chomp.to_i
end
c.a1=b
c.optr
					
