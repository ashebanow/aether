class Dice
  # TODO: allow for expressions like '4d6, drop lowest roll', maybe using syntax
  # like 'drop_lowest(4d6, 1)' would drop 1 low die
  
   # expressions are of the form
   #     <diceSpec>(<[+-][<diceSpec>|integer]>)*
   # <diceSpec> is of the form
   #     <numDice>[dD]<diceSize>
   # whitespace is ignored in all cases.
   # numDice defaults to 1 if not specified.
   # diceSize must be >= 2, 'd%' is a synonym for 'd100'.
   def initialize(expr)
      @expr = expr
      @dice_to_roll = validate_dice(@expr)
   end
   
   attr_reader :expr
   
   def roll
      results = roll_separately
      sum = 0
      results.each {|roll| sum += roll}
      return sum
   end
   
   # returns the individual dice rolls, with integer components inserted as well.
   # so if the expression was '4d6 - 2', you'd get back the list '[ 5 2 1 6 -2 ]'
   # summing the list returns the same values as the roll method above.
   def roll_separately
      results = []
      dice_to_roll = @dice_to_roll.values_at(0..(@dice_to_roll.length-1))
      while dice_to_roll && dice_to_roll.length > 0
         count = dice_to_roll.shift()
         die_size = dice_to_roll.shift()
         if (count < 0)
            # just add it to the list - number has already been negated previously
            results += [ die_size ]
         else
            # for each dice, generate a random number and add it to list
            for i in 1..count
               result = rand(die_size.abs() - 1) + 1
               result = -result if die_size < 0
               results += [ result ]
            end
         end
      end
      return results
   end
   
   def roll_and_drop_lowest
     results = roll_separately()
     results.sort!
     results.shift
     sum = 0
     results.each {|roll| sum += roll}
     return sum
   end
   
   def add_dice(expr)
      # validate dice against regular expression
      validate_dice(expr)
      
      # add expr to end of rules
      @expr += ' ' + expr
   end
   
   private
   
   def validate_dice(expr)
      elements = expr.split(/\s*[+-]\s*/)
      terms = expr.delete("^+-")
      @dice_to_roll = []
      cur_term = -1        # our first term didn't get an operator, so we skip it
      elements.each() do |die|
         die =~ /\s*(\d*)([dD](\d+|%)){0,1}\s*/
         if !$1 || $1 == ""
            count = 1 
         else
            count = $1.to_i()
         end

         if !$3 || $3 == ""
            die_size = count;
            count = -1;
         else
            if $3 == "%"
               die_size = 100
            else
               die_size = $3.to_i()
               die_size = 2 if die_size < 2;
            end
         end
         
         die_size = -die_size if (cur_term >= 0) && (terms[cur_term] == "-")
         @dice_to_roll += [count.to_i(), die_size.to_i()]
         cur_term += 1
      end
      return @dice_to_roll
   end
end
