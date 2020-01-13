class Student
    attr_accessor :rollno, :name, :state, :branch, :cgpa
    def initialize(rollno=nil,name=nil,state=nil,branch=nil,cgpa=nil)
        @rollno=rollno
        @name=name
        @state=state
        @branch=branch
        @cgpa=cgpa
   end
end
class College1 < Student
     def initialize
        a=Array.new
     end
     def enroll(st)
        @a.push st
     end
    def disp
       @a.each do |s|
         puts s
       end
    end
    def dispb
        @a.each do |s| 
          if branch=="CSE"
             puts s
          elsif branch=="IT"
             puts s
          end
         end
     end
     def dispst
        @a.each do |s|
            puts s
        end
     end
    def search(rollno)
       @a.each do |s|
         puts s if s.rollno==rollno
       end
    end
    def count1
       count=0
       puts "Enter branch name"
       bra=gets.chomp.to_s
       @a.each do |a|
         if branch==bra
            count+=1
          end
        end
        puts count
    end
    def count2
       count=0
       puts "Enter state name"
       sta=gets.chomp.to_s
       @a.each do |a|
         if state==sta
            count+=1
         end
       end
       puts count
    end
end
college1=College1.new
begin
i=1
while i>0
puts "\n 1.INPUT\n 2.DISPLAY\n 3.SERACH\n 4.DISPB\n 5.DISPST\n 6.COUNTBR\n 7.COUNTSTA\n 8.EXIT\n"
ch=gets.chomp.to_i
 case ch
   when 1
       rno=gets.chomp.to_i
       na=gets.chomp.to_s
       st=gets.chomp.to_s
       br=gets.chomp.to_s
       cg=gets.chomp.to_f
       s=Student.new(rno,na,st,br,cg)
       college1.enroll s
  when 2
       college1.disp
  when 3
       college1.search rno
  when 4
       college1.dispb
  when 5
       college1.dispst
  when 6
       college1.count
  when 7
       college1.count1
  when 8
       puts "EXIT\n"
       i=-1
end
end
end
