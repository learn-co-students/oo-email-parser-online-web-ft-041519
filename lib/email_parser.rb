# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    emails_arr = []
    puts "@emails: #{@emails}"
    if @emails.include?(",") && @emails.include?(" ")
      emails_arr = emails.split(/[,\s]/)
      emails_arr.delete_if { |email| email == "" }
    elsif @emails.include?(",")
      @emails.split(", ")
    else
      puts "else"
      email = @emails.split(" ")
      puts "##{email}"
      email
    end
    emails_arr = emails_arr.uniq
    emails_arr
  end

end
