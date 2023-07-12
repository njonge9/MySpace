class ApplicationController < ActionController::Base
    before_action :set_notification, if: :current_user

    private

    def set_notifications
        notifications = Notification.where(recipient: current_user). newest_first.limit(9)
        @uread = notifications.unread
        @read = notifications.read
    end
end
