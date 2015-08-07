class PortfolioItem < ActiveRecord::Base
  has_many :stack_components
  validates_formatting_of :link, using: :url
end
