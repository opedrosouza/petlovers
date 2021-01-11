class Pet < ApplicationRecord
  validates :name, :birth_date, :breed, :kind, presence: true
end
