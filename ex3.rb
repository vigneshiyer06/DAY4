class StringO
    attr_accessor :a
    def initialize 
        @a=[]
    end
    def operate
        puts"Welcome to the program\n1.Add mail id\n2.Display all\n3.Display only edu mail ids\n4.Delete mail ID by value\n5.Display unique domain of all mail ids\n6.Search\n7.Count mail ids in given domain\n8.exit"
        begin
            puts "Choose from the above options\n"
            s=gets.chomp.to_i
            case (s)
                when 1 then
                puts "Enter the email to add\n"
                b=gets.chomp.to_s
                @a.push(b)
                if @a.last.include?("@")
                    puts "Email added succesfully\n"
                else
                    @a.pop
                    puts "Invalid email: Removed"
                
                end 
                when 2 then
                    puts "Displaying all the email\n"
                    puts @a.display
                when 3 then
                    puts"Displaying .edu IDS"
                    j=0
                    for i in 0...@a.size do
                        if @a[i].include?(".edu")
                            puts a[i]
                            j=1
                        end
                    end
                    puts"NONE\n" if j==0
                when 4 then
                    puts "Enter the email address to delete\n"
                    @a.delete(gets.chomp.to_s)
                    puts "Email successfully deleted\n"
                when 5 then
                    b=[]    
                    j=0
                    for i in 0...@a.size do
                        b[i]=@a[i].split("@").last
                        j=j+1
                    end
                    puts b.uniq
                    b.clear
                when 6 then
                    puts "Enter email to search\n"
                    puts @a.include?gets.chomp.to_s
                when 7 then
                    j=0
                    puts "Enter the domian to count\n"
                    s=gets.chomp.to_s
                    for i in 0...@a.size do
                        if @a[i].include?"s"
                            j=j+1
                        end
                    end
                    puts "Total no of emails having domain #{s}=#{j.to_s}"
                when 8 then
                    puts "Exiting"
            end

        end while(s!=8)
        
    end
end

obj1=StringO.new
obj1.operate

       
