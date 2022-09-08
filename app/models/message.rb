class Message < ApplicationRecord
  validates :name, presence: true
  validates :phone, presence: true
  validates :content, presence: true
  validates :email, presence: true
end
