class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  #validates :category, %i[chinese, italian, japanese, french, belgian]
end
