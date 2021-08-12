class Course < ApplicationRecord
  validate :title, precense: true
  validates :description, presence: true, length: { :minimum => 5 }
end
