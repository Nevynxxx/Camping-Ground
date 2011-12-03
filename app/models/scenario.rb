class Scenario < ActiveRecord::Base
  belongs_to :author

  validates_presence_of :name, :number, :author_id, :season

  def no
    "#%d-%02d" % [self.season, self.number]
  end
end
