package com.google.firebase.messaging;

import android.os.SystemClock;
import androidx.core.app.NotificationCompat$Builder;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public abstract class CommonNotificationBuilder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicInteger f35230a = new AtomicInteger((int) SystemClock.elapsedRealtime());

    public static class DisplayNotificationInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final NotificationCompat$Builder f35231a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f35232b;

        public DisplayNotificationInfo(NotificationCompat$Builder notificationCompat$Builder, String str) {
            this.f35231a = notificationCompat$Builder;
            this.f35232b = str;
        }
    }
}
