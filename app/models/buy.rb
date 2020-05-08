class Buy < ApplicationRecord
  validates_acceptance_of :confirming, allow_nil: false, on: [:create]
  after_validation :check_confirming

  def check_confirming
    errors.delete(:confirming)
    self.confirming = errors.empty? ? '1' : ''
  end
end
