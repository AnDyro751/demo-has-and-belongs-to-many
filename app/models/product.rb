class Product < ApplicationRecord
  has_and_belongs_to_many :fulfillment_centers
  has_and_belongs_to_many :distribution_centers
end
