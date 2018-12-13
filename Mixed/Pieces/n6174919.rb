class N6174919
   attr_accessor :stock

   @stock = 6

   def initialize(number)
      @number = number
   end

   def stock
      @stock -= @number
   end
end