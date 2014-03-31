class Owner < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name,  presence: true
  validates :email,      presence: true
  validates :dog_name,   presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/
  def full_name
    self.first_name + " " + self.last_name
  end
end
