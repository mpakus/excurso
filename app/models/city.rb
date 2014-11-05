class City < ActiveRecord::Base
  validates :name, uniqueness: true, presence: true

  has_many :tours, dependent: :destroy

  scope :have_tours,   ->{ where.not(tours_count: 0) }
  scope :alphabetical, ->{ order('name ASC') }
end
