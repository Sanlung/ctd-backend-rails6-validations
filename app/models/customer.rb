class Customer < ApplicationRecord
  validates :first_name, :last_name, :phone, :email, presence: true
  validates :phone, numericality: { only_integer: true }
  validates :phone, length: { is: 10 }
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  def full_name
    "#{first_name} #{last_name}"
  end
end
