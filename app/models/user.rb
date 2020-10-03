class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
        validates :Nickname,:First_name,:First_name_kana,:Birth_day,presence: true
        has_one :sending_destination,dependent: :destroy

        has_one :credit_card, dependent: :destroy

        has_many :items,dependent: :destroy

end
