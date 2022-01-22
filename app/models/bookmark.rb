class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates :list, presence: true, uniqueness: true
  validates :movie, uniqueness: { scope: :list }
end
