class Memo < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :name, presence: true, length: { maximum: 255 }
  validates :text, presence: true, on: :create
end
