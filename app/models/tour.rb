class Tour < ActiveRecord::Base
  include Stateable
  include Sortable

  validates_presence_of :name
  validates_presence_of :city

  belongs_to :city, touch: true
  has_and_belongs_to_many :categories

  after_save    :update_counter_cache#, if: :state_changed?
  after_destroy :update_counter_cache

  # kaminari pagination
  paginates_per 20

  def self.find_draft
    self.where(state: Tour.states[:draft]).first
  end

  protected

    def update_counter_cache
      self.city.tours_count = Tour.published.where(city: self.city).count
      self.city.save
    end

end