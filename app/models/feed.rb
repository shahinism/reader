# frozen_string_literal: true
class Feed < ApplicationRecord
  has_many :user_feeds
  has_many :users, through: :user_feeds
end
