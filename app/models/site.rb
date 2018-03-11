class Site < ApplicationRecord
  validates :origin_url, presence: true, uniqueness: true
  validates :short_path, presence: true, uniqueness: true

  def increse_usage_amount
    update(usage_amount: usage_amount + 1)
  end
end
