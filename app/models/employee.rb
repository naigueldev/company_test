class Employee < ApplicationRecord
  belongs_to :company,  required: false

end
