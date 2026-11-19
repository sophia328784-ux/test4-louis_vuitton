package com.sightcall.universal.internal.util;

import androidx.core.app.NotificationCompat$Builder;

/* JADX INFO: loaded from: classes3.dex */
public final class NotificationBuilderCompat {
    private NotificationBuilderCompat() {
    }

    public static void setContentInfo(NotificationCompat$Builder notificationCompat$Builder, CharSequence charSequence) {
        notificationCompat$Builder.getClass();
        notificationCompat$Builder.q = NotificationCompat$Builder.e(charSequence);
    }

    public static void setNumber(NotificationCompat$Builder notificationCompat$Builder, int i2) {
        String strValueOf = String.valueOf(i2);
        notificationCompat$Builder.getClass();
        notificationCompat$Builder.q = NotificationCompat$Builder.e(strValueOf);
    }
}
