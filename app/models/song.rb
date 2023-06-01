class Song < ApplicationRecord
  validates :title, presence: true
  validates :artist, presence: true
  validates :content, presence: true
end
