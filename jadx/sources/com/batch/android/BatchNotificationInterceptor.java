package com.batch.android;

import android.content.Context;
import android.os.Bundle;
import androidx.core.app.NotificationCompat$Builder;

/* JADX INFO: loaded from: classes.dex */
public abstract class BatchNotificationInterceptor {
    public NotificationCompat$Builder getPushNotificationCompatBuilder(Context context, NotificationCompat$Builder notificationCompat$Builder, Bundle bundle, int i2) {
        return notificationCompat$Builder;
    }

    public int getPushNotificationId(Context context, int i2, Bundle bundle) {
        return i2;
    }
}
