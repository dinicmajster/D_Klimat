class CompanyCode < ApplicationRecord
  validates :cocod, presence: true
  validates :entity, presence: true
end
