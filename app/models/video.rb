class Video < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :url, presence: true, format: { with: /\A(http(s)?:\/\/)(\S)*(\/)(\S)*(.m3u8)\z/i, :message => "Extensão inválida" }
end
