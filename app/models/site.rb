class Site < ApplicationRecord

  SHORT_PATH_LENGTH = 8

  validates :origin_url, presence: true, uniqueness: true
  validates :short_path, presence: true, uniqueness: true

  def increse_usage_amount
    update(usage_amount: usage_amount + 1)
  end

  def self.generate_short_path
    short_paths = Site.all.map { |site| site.short_path }
    loop do
      token = SecureRandom.hex SHORT_PATH_LENGTH
      return token unless short_paths.include?(token)
    end
  end
end
