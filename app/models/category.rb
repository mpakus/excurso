class Category < ActiveRecord::Base
  include Sortable

  validates :name, uniqueness: true, presence: true

  has_and_belongs_to_many :tours
end