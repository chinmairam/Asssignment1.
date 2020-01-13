class Arr1 
   attr_accessor :a
   def self.input
       a=[10,20,30,40,50]
       a.push 60
       return a
   end
   def add
      a=Arr1.input
      a.push 70
      a.push 80
      return a
   end
   def min1
       a=Arr1.input
       puts a.min.to_i
   end
   def max
       a=Arr1.input
       puts a.max
   end
   def sum
       a=Arr1.input
       puts a.sum
    end
  def avg
      a=Arr1.input
      puts a.sum/a.length
  end
  def display
       a=Arr1.input
       a.each do |a|
         puts a
      end
 end
 def delete
    a=Arr1.input
     puts a.delete_at(2)
     #puts "Enter index to be deleted"
     #ind=gets.chomp.to_i
     #for i in a
       #if(i==ind)
       #  puts a.delete_at(i)
       #else
        # puts "Index Not Found"
       #end
 end
 def search
     a=Arr1.input
     puts "Enter Element to be searched"
     key=gets.chomp.to_i
     a.each do |a|
       if a==key
         puts "Search Element Found"
       end
    end
   end
 def delete1
      a=Arr1.input
      puts "Enter value to be deleted"
      val=gets.chomp.to_i
      a.each do |y|
        if a==val
          puts "#{a.delete(y)}"
        end
      end
   end
end
x=Arr1.new
begin
i=1
while i>0
puts "\n 1.ADD \n 2.MIN \n 3.MAX \n 4.SUM\n 5.AVERAGE\n 6.DELETE_INDEX\n 7.DELETE_VALUE\n 8.SEARCH\n 9.DISPLAY\n 10.EXIT\n"
ch=gets.chomp.to_i
case ch
     when 1
       x.add
     when 2
        x.min1
     when 3
        x.max
     when 4
        x.sum
     when 5
        x.avg
     when 6
        x.delete
     when 7
        x.delete1
     when 8
        x.search  
     when 9
        x.display
     when 10
        puts "EXIT"
        i=-1
end
end
end   
      
