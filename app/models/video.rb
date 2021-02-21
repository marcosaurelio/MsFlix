class Video < ApplicationRecord
  belongs_to :user
  has_one_attached :cover

  validates :name, presence: true
  validates :url, presence: true, format: { with: /\A(http(s)?:\/\/)(\S)*(\/)(\S)*(.m3u8)\z/i, :message => "Extensão inválida" }

	def update_quantity
    update_attribute(:quantity, self.quantity + 1)
	end

end
