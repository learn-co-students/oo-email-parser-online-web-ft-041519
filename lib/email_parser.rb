require "pry"

class EmailParser
  
  attr_accessor :emails
  
  def initialize(emails)
    @emails = emails
  end
   
  def parse 
    emails.split.collect do |e_address|     # why do i need split twice?
      e_address.split(',').join("")   #takes the value, splits on the ,. use .join to elim. array[]
    end.uniq          #runs .uniq on the return value last line of code of the line above.
  end
end 

