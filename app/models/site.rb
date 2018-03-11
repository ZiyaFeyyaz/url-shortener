class Site < ApplicationRecord
  validates :origin_url, presence: true, uniqueness: true
  validates :short_path, presence: true, uniqueness: true
end
