class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy

  normalizes :email_address, with: ->(e) { e.strip.downcase }

  validates :first_name, :last_name, presence: true

  enum :role, { admin: 0, austin_paces: 1, family: 2, everyone: 3 }

  def full_name
    "#{first_name} #{last_name}"
  end

  def can_see?(share)
    return true if admin?
    User.roles[role] <= Share.audiences[share.audience] + 1
  end
end
