class Product < ApplicationRecord
  has_and_belongs_to_many :fulfillment_centers
  # accepts_nested_attributes_for :fulfillment_centers
end
