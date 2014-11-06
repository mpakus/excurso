class City < ActiveRecord::Base
  include Sortable

  validates :name, uniqueness: true, presence: true

  has_many :tours, dependent: :destroy

  scope :have_tours,   ->{ where.not(tours_count: 0) }
end
