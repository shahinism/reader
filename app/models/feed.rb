# frozen_string_literal: true
class Feed < ApplicationRecord
  has_many :subscriptions
  has_many :users, through: :subscriptions
end
