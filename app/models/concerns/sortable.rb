module Sortable
  extend ActiveSupport::Concern

  included do
    scope :alphabetical, ->{ order('name ASC') }
    scope :newest,       ->{ order('created_at DESC') }
  end
end
