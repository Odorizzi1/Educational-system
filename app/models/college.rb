class College < ApplicationRecord
    before_create { self.id = SecureRandom.uuid }
    validates :name, presence: true
    validates :city, presence: true
    attribute :active, :boolean, default: true
  end