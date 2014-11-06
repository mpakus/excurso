class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  def admin?
    self.role && self.role.to_sym == :admin
  end

  def manager?
    self.role && self.role.to_sym == :manager
  end
end
