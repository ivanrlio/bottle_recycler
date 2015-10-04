require 'pry'
require './machine'

class Interface
  
  def initialize
    @pop_machine = Machine.new
  end


  def initiate
    @function = true
    while @function
      puts "Please type 'purchase' to start, 'check value caps', 'check value bottles' or 'quit' to end."
      user = gets.chomp
      case user
        when 'purchase' then spend
        when 'check value caps' then check_value_caps
        when 'check value bottles' then check_value_bottles
        when 'quit' then quit
        else puts "I don't know that command!"
      end
    end
  end
  
  def spend
    puts "How much would you like to spend?"
    amount = gets.chomp
    @pop_machine.purchase(amount)
  end

  def check_value_caps
    puts "Please enter the numerical amount to check the value."
    user = gets.chomp
    @pop_machine.check_caps(user)
  end

  def check_value_bottles
    puts "Please enter the numerical amount to check the value."
    user = gets.chomp
    @pop_machine.check_bottles(user)
  end

    
  def quit
    puts "Quitting operation!"
    @function= false
  end
end

Interface.new.initiate 

