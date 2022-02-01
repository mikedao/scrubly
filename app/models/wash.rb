class Wash < ApplicationRecord
  def self.last_24_count
    where('created_at >= ?', 1.day.ago).count
  end
end