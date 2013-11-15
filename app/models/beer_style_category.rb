class BeerStyleCategory < ActiveRecord::Base
  has_many :beer_styles
  has_many :beers, through: :beer_styles

  validates_presence_of :name

  def to_s
    self.name
  end
end
