class Beer < ActiveRecord::Base
  belongs_to :beer_style
  accepts_nested_attributes_for :beer_style, reject_if: ->(attributes) { attributes['name'].blank? }

  validates_presence_of :name
  validates_associated :beer_style

  def style
    self.beer_style
  end

  def self.default_style
    'Unknown'
  end

  def to_s
    self.name
  end
end
