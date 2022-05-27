class ServiceProvider < ApplicationRecord
  # 🚅 add concerns above.

  attr_accessor :logo_removal
  # 🚅 add attribute accessors above.

  belongs_to :municipality
  # 🚅 add belongs_to associations above.

  # 🚅 add has_many associations above.
  has_one_attached :image, dependent: :destroy
  has_one :team, through: :municipality
  has_one_attached :logo
  # 🚅 add has_one associations above.

  # 🚅 add scopes above.

  before_validation :reject_blank_services
  validates :name, presence: true
  # 🚅 add validations above.

  after_validation :remove_logo, if: :logo_removal?
  # 🚅 add callbacks above.

  # 🚅 add delegations above.

  def logo_removal?
    logo_removal.present?
  end

  def remove_logo
    logo.purge
  end
  # 🚅 add methods above.

  def self.search(search)
    if search
    where("services @> ARRAY[?]::varchar[]", search)    
    else
      all
    end
  end

  private 
  def reject_blank_services
    self.services = self.services.reject(&:blank?)
  end
end
