class Calc
    def self.input
        p=gets.chomp.to_i
        q=gets.chomp.to_i
        return p,q
   end
    def add
       p,q=Calc.input
       puts p+q
    end
    def sub
        p,q=Calc.input
       puts p-q
    end
    def mul
        p,q=Calc.input
       puts p*q
    end
    def div
        p,q=Calc.input
       puts p/q
    end
end
c=Calc.new
begin
i=1
while i>0
puts "\n 1.ADD \n 2.SUB \n 3.MUL \n 4.DIV\n 5.EXIT\n"
ch=gets.chomp.to_i
case ch
     when 1
          puts c.add
     when 2
           puts c.sub
     when 3
           puts c.mul
     when 4
           puts c.div
     when 5
           puts "exit"
            i=-1
end
end
end
