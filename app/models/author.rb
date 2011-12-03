class Author < ActiveRecord::Base
  validates_presence_of :firstname, :lastname

  #attr_accessor :firstname, :lastname

  def self.find_by_name(string)
    a = Author.find :first, :conditions => ["firstname = ? AND lastname = ?", string.split.first, string.split.last]
  end

  def to_s
    firstname + " " + lastname
  end

end
