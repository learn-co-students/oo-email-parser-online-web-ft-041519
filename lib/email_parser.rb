require "pry"

class EmailParser
  
  attr_accessor :emails
  
  def initialize(emails)
    @emails = emails
  end
   
  def parse 
    binding.pry
    emails.split.collect do |e| 
      #binding.pry   
      e.split(',').join("")
    end.uniq  #runs .uniq on the return value last line of code of the line above.
  end
end 

