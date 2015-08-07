class PortfolioItem < ActiveRecord::Base
  has_many :stack_components
end
