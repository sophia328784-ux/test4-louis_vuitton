package com.linkplay.lpmdpkit.observer;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class LPNotification implements Serializable {
    private NotificationItem notificationItem;

    public static class NotificationItem {
        private String payload;
        private LPNotificationType type;
        private String uuid;

        private NotificationItem() {
            this.payload = "";
            this.uuid = "";
        }
    }

    public static class NotifiyBuilder {
        NotificationItem notificationItem = new NotificationItem();

        public LPNotification build() {
            return new LPNotification(this.notificationItem);
        }

        public NotifiyBuilder setPayload(String str) {
            this.notificationItem.payload = str;
            return this;
        }

        public NotifiyBuilder setType(LPNotificationType lPNotificationType) {
            this.notificationItem.type = lPNotificationType;
            return this;
        }

        public NotifiyBuilder setUuid(String str) {
            this.notificationItem.uuid = str;
            return this;
        }
    }

    private LPNotification(NotificationItem notificationItem) {
        new NotificationItem();
        this.notificationItem = notificationItem;
    }

    public String getPayload() {
        return this.notificationItem.payload;
    }

    public LPNotificationType getType() {
        return this.notificationItem.type;
    }

    public String getUuid() {
        return this.notificationItem.uuid;
    }
}
