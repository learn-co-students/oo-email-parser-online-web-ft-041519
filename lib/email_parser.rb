# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
 #You should be able to initialize with a list of emails either separated with spaces
#*or* separated with commas.


require 'pry'
class EmailParser 
  attr_accessor :emails 
  
  def initialize(email) 
    @emails = email
  end 
  
  def parse
    @emails = @emails.gsub(/[\s,]/, " ").split 
    @emails.uniq 
  end
 end  
 
 #Notes: gsub regex - Returns a copy of str with the all occurrences of pattern substituted for the second argument.
 #\s, includes white spaces with comma.
 #" " includes the white space 
 #.split splits into array 
 

