###
#The Author class. An Author is a writer of a scenario, and has the potential
#to have many scenarios
###

class Author < ActiveRecord::Base
  validates_presence_of :firstname, :lastname


  # As we don't store the full name, but use it, we search on first and last name
  def self.find_by_name(string)
    a = Author.find :first, :conditions => ["firstname = ? AND lastname = ?", string.split.first, string.split.last]
  end

  # Returns a sensible value for to_s
  def to_s
    firstname + " " + lastname
  end

end
