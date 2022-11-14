class UserOmikuji < ApplicationRecord
  belongs_to :user
  belongs_to :omikuji

  scope :created_today, -> { where(created_at: Time.zone.now.all_day) } # 今日
end
