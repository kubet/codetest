class Category < ApplicationRecord
  belongs_to :vertical
  has_many :courses, dependent: :destroy
  validate :validate_uniqueness_name_vertical, on: [:create, :update]

  private

  def validate_uniqueness_name_vertical
    vertical = Vertical.find_by_name(name)
    raise_validation_error if vertical.present?
  end

end
