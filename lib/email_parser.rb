# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'
class EmailParser
  attr_accessor :email_string
  attr_reader :parsed_list

  def initialize(e_string)
    @email_string = e_string
  end
  
  def parse
    e_arr = email_string.split(/,\s|\s/).uniq
  end
end