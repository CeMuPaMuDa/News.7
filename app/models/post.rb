# frozen_string_literal: true

class Post < ApplicationRecord
  validates :title, presence: true
  validates :title, length: { in: 3..150 }
  validates :content, length: { maximum: 2500 }
end
