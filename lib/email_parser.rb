# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  
  attr_accessor :emails 
  
  def initialize(emails) 
    @list = emails.split(/[(,\s)(\s)]/)
  end 
  
  def parse 
    @list.delete_if {|emails| emails.empty?}.uniq 
  end 
end 