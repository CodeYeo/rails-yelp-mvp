class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, presence: true
  validates :rating, must_be_integer


  private

  def must_be_integer
    if rating.present? && !rating.is_a?(Integer)
      errors.add(:rating, "must be an integer")
    end
  end
end
