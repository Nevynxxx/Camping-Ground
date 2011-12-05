###
# Scenario class, to hold the details of the individual
# scenarios that we scrape from Paizo.com
###
class Scenario < ActiveRecord::Base
  belongs_to :author

  validates_presence_of :name, :number, :author_id, :season

  # Returns the niely formated module number, including season
  def no
    "#%d-%02d" % [self.season, self.number]
  end
end
