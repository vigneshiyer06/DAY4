class Stud
    attr_accessor :rno, :name, :state, :branch, :cgpa
    def initialize
        puts "Initializing object\n"
        @rno,@name,@state,@branch,@cgpa=nil,nil,nil,nil,nil
    end
    def display
        puts "Roll No:#{@rno}\t\tName:#{@name}\t\tState:#{state}\t\tBranch:#{@branch}\t\tCGPA:#{@cgpa}\n"
    end
    def operate
        a=[]
        puts "WELCOME TO THE PROGRAM\n"
        puts "SELECT FROM THE FOLLOWING OPTIONS\N"
        puts "1.Add new student\n2.Display all students\n3.Display student by branch\n4.Display students by state\n5.Search student by roll number\n6.Search by part of name\n7.Delete by roll number\n8.Count and display number of student by state\n9.Count and display number of students by branch\n10.EXIT\n"
        begin
            puts"ENTER YOUR CHOICE\n"
            b=gets.chomp.to_i
            case b
                when 1
                    puts"Enter the student details\n"
                    s=a.size
                    a[s]=Stud.new
                    puts"Roll No:"
                    a[s].rno=gets.chomp.to_i
                    puts "Name:"
                    a[s].name=gets.chomp.to_s
                    puts "State:"
                    a[s].state=gets.chomp.to_s
                    puts "Branch:"
                    a[s].branch=gets.chomp.to_s
                    puts "CGPA:"
                    puts "ENTER A CGPA LESS THAN OR EQUAL TO 10.0"   
		    a[s].cgpa=gets.chomp.to_f                              
                when 2
                    puts"Displaying all Student information\n"
                    for i in 0...a.size do
                        a[i].display
                    end
                when 3
                    puts "Enter the branch to be searched:"
                    b=gets.chomp.to_s  
                    c=[]
                    for i in 0...a.size do
                        if a[i].branch.casecmp(b)==0
                            c.push(i)
                        end
                    end
                    
                    if c.empty?
                        puts "No Student from #{b.to_s}branch\n"
                    else
                        puts"Displaying students from #{b.to_s} branch\n"
                        c.each do |i|
                            a[i].display
                        end
                     end
                when 4
                    puts"Enter the state to be searched\n"
                    b=gets.chomp.to_s
                    c=[]
                    for i in 0...a.size do
                        if a[i].state.casecmp(b)==0
                            c.push(i)
                        end
                    end
                    if c.empty?
                        puts "No Student from #{b.to_s} state\n"
                    else
                        puts"Displaying students from #{b.to_s} state\n"
                        c.each do |i|
                            a[i].display
                        end
                    end
                when 5
                    puts "Enter Roll No to search by:"
                    b=gets.chomp.to_i
                    c=[]
                    for i in 0...a.size do
                        if a[i].rno==b
                            c.push(i)
                        end
                    end
                    if c.empty?
                        puts "Roll Number does not exist\n"
                    else 
                        c.each do |i|
                            a[i].display
                        end
                    end
                when 6
                    puts "Enter the name to search"
                    b=gets.chomp.to_s
                    c=[]
                    for i in 0...a.size do
                        if a[i].name.include?(b)
                            c.push(i)
                        end
                    end
                    if c.empty?
                        puts "Name not found"               
                    else 
                        c.each do |i|
                            a[i].display
                        end
                    end
                when 7
                    puts "Enter roll no to delete\n"
                    b=gets.chomp.to_i
                    c=[]
                    for i in 0...a.size do
                        if a[i].rno==b
                            c.push(i)
                        end
                    end
                    if c.empty?
                        puts "Roll no not fount to delete\n"
                    else
                        c.each do|i|
                            a.delete_at(i)
                        end
                    end
                when 8
                    puts "Enter the state to search"
                    b=gets.chomp.to_s
                    c=[]
                    count=0
                    for i in 0...a.size do
                        if a[i].state.casecmp(b)==0
                            c.push(i)
                        end
                    end
                    if c.empty?
                        puts "No student found from #{b}"
                    else 
                        c.each do |i|
                            a[i].display
                        end
                    end
                    puts "The no of students from #{b}=#{c.size}"
                when 9
                    puts "Enter the branch to search"
                    b=gets.chomp.to_s
                    c=[]
                    count=0
                    for i in 0...a.size do
                        if a[i].branch.casecmp(b)==0
                            c.push(i)
                        end
                    end
                    if c.empty?
                        puts "No student found from #{b}"
                    else 
                        c.each do |i|
                            a[i].display
                        end
                    end
                    puts "The no of students from #{b}=#{c.size}"
                when 10
                    puts "Exiting\n"
                

             end
         end while(b!=10)
     end       
 end

 c=Stud.new
 c.operate

