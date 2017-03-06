class Company < ApplicationRecord
  has_many :employees
  validates :name, presence: true
  accepts_nested_attributes_for :employees, allow_destroy: true,
  reject_if: proc { |attributes| attributes['name'].blank? }
end
