class Task < ApplicationRecord
  belongs_to :employee

  extend Enumerize
  enumerize :priority, in: [:critical, :medium, :low]
  enumerize :state, in: [:new, :active, :resolved, :closed]
  enumerize :estimate, in: [:small, :medium, :large]
end
