# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Scott Chou.
# I spent 5 hours on this challenge.

____________________________________________________________________________

# Pseudocode

# Input: 16 digit credit card number as integer
# Output: True or False, or argument error if not 16 digits
# Steps:
=begin
Take the integer and check if it's length is 16.
IF it is not, then argumenterror
ELSE
  convert integer to string then split it into an array
  turn each individual cell back into an integer
  and then multiply every other number by 2
split the 2-digit products into 2 separate digits
add the integers together, and if it is divisible by 10, then good job, and output true.


=end

# 4563960122001999.to_s.split --> outputs our array with 16 single digits
# [4,5,6,3,9,6,0,1,2,2,0,0,1,9,9,9]
# NOTE: Dont set variables equal to OTHER variables!!

# Don't forget to check on initialization for a card length
# of exactly 16 digits

__________________________________________________________________________________


# class CreditCard
#   def initialize(creditcard)
#     @creditcard = creditcard
#     integer_array = []
#     strings_array = @creditcard.to_s.split("")
#     strings_array.each do |string|
#       integer_array << string.to_i
#     end
#     unless integer_array.length == 16
#       raise ArgumentError.new("Not a valid number of digits")
#     end
#   end

#   def check_card
#     multiplied_array = []
#     split_array = []
#     integer_array = []
#     seriously_tho_final_array = []
#     strings_array = @creditcard.to_s.split("")
#     strings_array.each do |string|
#       integer_array << string.to_i
#     end
#     counter = 0
#     while counter < integer_array.length
#       if counter % 2 == 0
#         multiplied_array << integer_array[counter]*2
#       else
#         multiplied_array << integer_array[counter]
#       end
#       counter += 1
#     end

#     multiplied_array.each do |this|
#       if this > 9
#         split_array << this.to_s.split("")     # --> outputs [1, 2]
#       else
#         split_array << this
#       end
#     end
#     split_array.flatten.each do |element|
#       seriously_tho_final_array << element.to_i
#     end
#     total = seriously_tho_final_array.inject("+")
#     if total % 10 == 0
#       p true
#     else
#       p false
#     end

#   end


# end

# p CreditCard.new(4563960122001999).check_card
# # p dananderson.check_card

# # def check_card
# # end

________________________________________________________________________


# Refactored Solution

class CreditCard
  def initialize(creditcard)
    @creditcard = creditcard
    @strings_array = @creditcard.to_s.split("")
    @strings_array.map! { |element| element.to_i }
    @multiplied_array = []
    @final_array = []
    raise ArgumentError.new("Not a valid number of digits") if @strings_array.length != 16
  end

  def timestwo
    counter = 0
      while counter < @creditcard.to_s.length
      if counter.even?
        @multiplied_array << @strings_array[counter]*2
      else
        @multiplied_array << @strings_array[counter]
      end
      counter += 1
    end
  end

  def twodigitsplitter
    split_array = []
    @multiplied_array.each do |number|
      split_array << number.to_s.split("")
    end
      split_array.flatten.each do |element|
      @final_array << element.to_i
    end
  end

  def digit_sum
    total = @final_array.inject("+")
    if total % 10 == 0
      p true
    else
      p false
    end
  end

  def check_card
    timestwo
    twodigitsplitter
    digit_sum
  end
end

  CreditCard.new(4563960122001999).check_card

___________________________________________________________________________

SECOND REFACTOR:
class CreditCard
  def initialize(creditcard)
    @creditcard = creditcard
    @strings_array.map! { |element| element.to_i }
    raise ArgumentError.new("Not a valid number of digits") if @creditcard.to_s.length("") != 16
  end

  # If some particular method is more than 5 lines (roughly) it can probably be simplified or split up
  # (&:to_i) {|ele|ele.to_i}
  # No more than 5 periods in a method

  def splitter
    @strings_array = @creditcard.to_s.split("")


  def timestwo
    @multiplied_array = []
    counter = 0
      while counter < @creditcard.to_s.length
      if counter.even?
        @multiplied_array << @strings_array[counter]*2
      else
        @multiplied_array << @strings_array[counter]
      end
      counter += 1
    end
  end

  def twodigitsplitter
    split_array = []
    @final_array = []
    @multiplied_array.each do |number|
      split_array << number.to_s.split("")
    end
      split_array.flatten.each do |element|
      @final_array << element.to_i
    end
  end

  def digit_sum
    total = @final_array.inject("+")
    if total % 10 == 0
      p true
    else
      p false
    end
  end

  def check_card
    timestwo
    twodigitsplitter
    digit_sum
  end
end

  CreditCard.new(4563960122001999).check_card

________________________________________________________________________________

# Reflection

