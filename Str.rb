class Str1
     def self.input
        a=["pspk@gmail.com","122003158@sastra.edu","pk@gmail.com"]
        return a
     end
     def add
        a=Str1.input
        puts a.push "msd@yahoo.com"
        return a
   end
   def display
       a=Str1.input
       a.each do |a|
          puts a
       end
  end
  def dispedu
       a=Str1.input
       a.each do |a|
            if(a.end_with?(".edu")==true)
              puts a
            end
       end
  end
  def dispdom
       a=Str1.input
       a.each do |a|
         x=a.split("@").last
         puts x
       end
  end
  def search
       a=Str1.input
       puts "Enter e-mail to be searched"
       temp=gets.chomp.to_s
       a.each do |a|
         if temp==a
           puts "e-mail found"
           break
         end
      end
   end
  def delete
       a=Str1.input
       puts "Enter e-mail id to be deleted"
       del=gets.chomp.to_s
       a.each do |a|
         if del==a
            a.gsub(del," ").strip
         end
          
       end
   end
  def count1
      a=Str1.input
      count=0
      puts "Enter domain name"
      dom=gets.chomp.to_s
      a.each do |a|
       x=a.split("@").last
       if(dom==x)
          count+=1
       end
      end
      puts count
   end
 end
x=Str1.new
begin 
i=1
while i>0
puts "\n 1.ADD\n 2.DISPLAY\n 3.DISPEDU\n 4.DISP-DOMAIN\n 5.SEARCH\n 6.DELETE\n 7.COUNT\n 8.EXIT\n"
ch=gets.chomp.to_i
case ch
    when 1
        x.add
    when 2
       x.display
    when 3
       x.dispedu
    when 4
       x.dispdom
    when 5
       x.search
    when 6
       x.delete
    when 7
       x.count1
    when 8
       puts "EXIT\n"
       i=-1
end
end
end
