class Animal < ApplicationRecord
  has_many :sightings
  accepts_nested_attributes_for :sightings

  validates :common_name, :latin_name, presence: true
  validates :common_name, :latin_name, uniqueness: true
  validate :check_names

  def check_names
    if common_name == latin_name
    errors.add(:latin_name, "can't be the same as common_name")
    end
  end

end
