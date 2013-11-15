class BeerStyle < ActiveRecord::Base
  has_many :beers
  belongs_to :beer_style_category
  accepts_nested_attributes_for :beer_style_category, reject_if: ->(attributes) { attributes['name'].blank? }

  validates_presence_of :name
  validates_associated :beer_style_category

  def category
    self.beer_style_category
  end

  def self.default_category
    'Uncategorized'
  end

  def to_s
    self.name
  end
end
