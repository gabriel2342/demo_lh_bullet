class Municipality < ApplicationRecord
  # 🚅 add concerns above.

  belongs_to :organization, inverse_of: :municipalities
  # 🚅 add belongs_to associations above.

  has_many :service_providers, dependent: :destroy
  # 🚅 add has_many associations above.

  has_one :team, through: :organization
  # 🚅 add has_one associations above.

  # 🚅 add scopes above.

  validates :name, presence: true
  # 🚅 add validations above.

  # 🚅 add callbacks above.

  # 🚅 add delegations above.

  # 🚅 add methods above.
end
