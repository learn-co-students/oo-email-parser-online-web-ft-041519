# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
#require 'pry'

class EmailParser
  @@all = []

  attr_accessor :parse

  def initialize(string)
    @@all = string.split(/[,\s]+/)
  end

  def self.all
    @@all
  end

  def parse
    @parse = self.class.all.uniq
  end
end
