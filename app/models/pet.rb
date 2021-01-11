class Pet < ApplicationRecord
  validates :name, :birth_date, :breed, :kind, presence: true
  enum kind: { 'dog': 0, 'cat': 1 }
end
