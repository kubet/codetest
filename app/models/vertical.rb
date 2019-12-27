class Vertical < ApplicationRecord
    validates :name, presence: true
    has_many :categories, dependent: :destroy
    validate :validate_uniqueness_name_category, on: [:create, :update]

    private

    def validate_uniqueness_name_category
        category = Category.find_by_name(name)
        raise_validation_error if category.present?
      end

end
