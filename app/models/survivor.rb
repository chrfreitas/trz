class Survivor < ApplicationRecord
  validates :name, presence: true
  validates :gender, inclusion: { in: %w(male female others) }
end
