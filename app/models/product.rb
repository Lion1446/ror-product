class Product < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :category, presence: true, length: { minimum: 3, maximum: 50 }
  validates :description, presence: true, length: { minimum: 10 }
  validates :price, presence:     true,
                    numericality: { greater_than_or_equal_to: 0.01, less_than_or_equal_to: 9999.99 }
  validates :is_available,
            inclusion: { in: [true, false], message: "must be either true or false" }

  # Custom error message for price
  validate :price_must_be_reasonable

  private

  def price_must_be_reasonable
    return unless price && price > 1000

    errors.add(:price, "is too high, we don't sell items over $1000!")
  end
end
