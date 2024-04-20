class HasCategory < ApplicationRecord
  belongs_to :article
  belongs_to :category
  has_many :articles, through: :has_categories
end
