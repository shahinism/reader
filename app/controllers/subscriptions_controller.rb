class SubscriptionsController < ApplicationController
  def index
    @subscriptions = current_user.feeds
  end
end
