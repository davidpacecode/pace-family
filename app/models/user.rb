class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy

  normalizes :email_address, with: ->(e) { e.strip.downcase }

  validates :first_name, :last_name, presence: true

  enum :role, { austin_paces: 0, family: 1, everyone: 2 }

  def full_name
    "#{first_name} #{last_name}"
  end
end
