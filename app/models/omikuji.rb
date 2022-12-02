class Omikuji < ApplicationRecord
  has_many :user_omikujis, dependent: :destroy

  validates :name, presence: true
end
