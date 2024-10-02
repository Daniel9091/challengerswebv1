class Organization < ApplicationRecord
  has_many :images
  has_many :organization_tags
  has_many :tags, through: :organization_tags
end
