class Subscription < ApplicationRecord
  belongs_to :event
  belongs_to :user, optional: true

  validates :user, uniqueness: {scope: :event_id}, if: -> { user.present? }
  validates :user_name, presence: true, unless: -> { user.present? }
  validates :user_email, presence: true, format: /\A[a-zA-Z0-9\-_.]+@[a-zA-Z0-9\-_.]+\z/, unless: -> { user.present? }
  validates :user_email, uniqueness: {scope: :event_id}, unless: -> { user.present? }

  validate :email_exists?, unless: -> { user.present? }
  validate :is_subscriber_owner_of_event?, if: -> { user.present? }

  def user_name
    if user.present?
     user.name
    else
     super
    end
  end

  def user_email
    if user.present?
      user.email
    else
      super
    end
  end

  private

  def email_exists?
    if User.exists?(email: user_email)
      errors.add(:user_email, :email_of_exsisting_user)
    end
  end

  def is_subscriber_owner_of_event?
    if user == event.user
      errors.add(:user, :subcsriber_is_owner_of_event)
    end
  end
end
