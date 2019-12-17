class Employee < ApplicationRecord
  belongs_to :dog

  # validates :title, :alias presence: :true
  # validates :title, uniqueness: :true
  # validates :alias, uniqueness: :true


end
