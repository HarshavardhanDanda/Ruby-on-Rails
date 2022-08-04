require 'test_helper'

class SubscriptionServiceTest < ActiveSupport::TestCase
  test '#create_or_extend new subscription' do
    user = users :no_sub
    subscription_service = SubscriptionService.new user
    assert_difference 'Subscription.count' do
      assert subscription_service.apply
    end
  end

  test '#create_or_extend existing subscription' do
    user = users :one
    subscription_service = SubscriptionService.new user
    assert_no_difference 'Subscription.count' do
      assert subscription_service.apply
    end
  end
end