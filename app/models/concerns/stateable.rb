module Stateable
  extend ActiveSupport::Concern

  included do
    enum state: {draft: 0, published: 5}

    scope :published,    ->{ where(state: 5) }

    before_save do
      self.state = self.description.blank? ? :draft : :published
    end
  end

end