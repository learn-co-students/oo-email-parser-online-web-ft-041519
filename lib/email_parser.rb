# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  
  attr_accessor :list_of_emails
  
  def initialize(list_of_emails)
    @array = list_of_emails.split(/[(,\s)(\s)]/)
  end

  def parse
    @array.reject { |i| i.empty?}.uniq
  end
  
end

