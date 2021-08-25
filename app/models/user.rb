# typed: strict
# frozen_string_literal: true

class User < ApplicationRecord
  extend T::Sig

  # Include default devise modules. Others available are:
  # :token_authenticatable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
         :trackable, :validatable, :confirmable
  after_create :create_api_key_object
  # TODO: Rename to :api_key once api key field on users have been removed
  has_one :api_key_object, class_name: "ApiKey", dependent: :destroy
  # Doing this for the benefit of activeadmin
  accepts_nested_attributes_for :api_key_object

  sig { params(notification: T.untyped, args: T.untyped).void }
  def send_devise_notification(notification, *args)
    devise_mailer.send(notification, self, *args).deliver_later
  end

  # TODO: Remove this when we can
  sig { returns(T.nilable(String)) }
  def api_key
    api_key_object&.value
  end

  # TODO: Remove this when we can
  sig { returns(T.nilable(T::Boolean)) }
  def bulk_api
    api_key_object&.bulk
  end

  # TODO: Remove this when we can
  sig { returns(T.nilable(T::Boolean)) }
  def api_disabled
    api_key_object&.disabled
  end

  # TODO: Remove this when we can
  sig { returns(T.nilable(T::Boolean)) }
  def api_commercial
    api_key_object&.commercial
  end

  # TODO: Remove this when we can
  sig { returns(T.nilable(Integer)) }
  def api_daily_limit
    api_key_object&.daily_limit
  end
end
