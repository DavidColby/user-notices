class Message < ApplicationRecord
  belongs_to :user

  after_create_commit :notify_user

  def notify_user
    notification = MessageNotification.with(message: self)
    notification.deliver_later(user)
  end
end
