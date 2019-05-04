# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  @@all = []

  def initialize(string)
    @@all.clear
    email = string.split(/,\s|\s/)
    email.each do |emails|
      if @@all.include?(emails) == false
        @@all << emails
      end
    end
  end

  def parse
    @@all
  end
end
