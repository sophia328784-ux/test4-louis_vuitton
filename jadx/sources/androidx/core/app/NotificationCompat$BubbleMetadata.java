package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
public final class NotificationCompat$BubbleMetadata {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public PendingIntent f11897a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PendingIntent f11898b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public IconCompat f11899c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11900e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11901f;
    public String g;

    public static class Api29Impl {
        public static NotificationCompat$BubbleMetadata a(Notification.BubbleMetadata bubbleMetadata) {
            if (bubbleMetadata == null || bubbleMetadata.getIntent() == null) {
                return null;
            }
            Builder builder = new Builder(bubbleMetadata.getIntent(), IconCompat.b(bubbleMetadata.getIcon()));
            builder.b(1, bubbleMetadata.getAutoExpandBubble());
            builder.f11906f = bubbleMetadata.getDeleteIntent();
            builder.b(2, bubbleMetadata.isNotificationSuppressed());
            if (bubbleMetadata.getDesiredHeight() != 0) {
                builder.f11904c = Math.max(bubbleMetadata.getDesiredHeight(), 0);
                builder.d = 0;
            }
            if (bubbleMetadata.getDesiredHeightResId() != 0) {
                builder.d = bubbleMetadata.getDesiredHeightResId();
                builder.f11904c = 0;
            }
            return builder.a();
        }

        public static Notification.BubbleMetadata b(NotificationCompat$BubbleMetadata notificationCompat$BubbleMetadata) {
            PendingIntent pendingIntent;
            if (notificationCompat$BubbleMetadata == null || (pendingIntent = notificationCompat$BubbleMetadata.f11897a) == null) {
                return null;
            }
            Notification.BubbleMetadata.Builder suppressNotification = new Notification.BubbleMetadata.Builder().setIcon(notificationCompat$BubbleMetadata.f11899c.h(null)).setIntent(pendingIntent).setDeleteIntent(notificationCompat$BubbleMetadata.f11898b).setAutoExpandBubble((notificationCompat$BubbleMetadata.f11901f & 1) != 0).setSuppressNotification((notificationCompat$BubbleMetadata.f11901f & 2) != 0);
            int i2 = notificationCompat$BubbleMetadata.d;
            if (i2 != 0) {
                suppressNotification.setDesiredHeight(i2);
            }
            int i3 = notificationCompat$BubbleMetadata.f11900e;
            if (i3 != 0) {
                suppressNotification.setDesiredHeightResId(i3);
            }
            return suppressNotification.build();
        }
    }

    public static class Api30Impl {
        public static NotificationCompat$BubbleMetadata a(Notification.BubbleMetadata bubbleMetadata) {
            if (bubbleMetadata == null) {
                return null;
            }
            Builder builder = bubbleMetadata.getShortcutId() != null ? new Builder(bubbleMetadata.getShortcutId()) : new Builder(bubbleMetadata.getIntent(), IconCompat.b(bubbleMetadata.getIcon()));
            builder.b(1, bubbleMetadata.getAutoExpandBubble());
            builder.f11906f = bubbleMetadata.getDeleteIntent();
            builder.b(2, bubbleMetadata.isNotificationSuppressed());
            if (bubbleMetadata.getDesiredHeight() != 0) {
                builder.f11904c = Math.max(bubbleMetadata.getDesiredHeight(), 0);
                builder.d = 0;
            }
            if (bubbleMetadata.getDesiredHeightResId() != 0) {
                builder.d = bubbleMetadata.getDesiredHeightResId();
                builder.f11904c = 0;
            }
            return builder.a();
        }

        public static Notification.BubbleMetadata b(NotificationCompat$BubbleMetadata notificationCompat$BubbleMetadata) {
            if (notificationCompat$BubbleMetadata == null) {
                return null;
            }
            String str = notificationCompat$BubbleMetadata.g;
            Notification.BubbleMetadata.Builder builder = str != null ? new Notification.BubbleMetadata.Builder(str) : new Notification.BubbleMetadata.Builder(notificationCompat$BubbleMetadata.f11897a, notificationCompat$BubbleMetadata.f11899c.h(null));
            builder.setDeleteIntent(notificationCompat$BubbleMetadata.f11898b).setAutoExpandBubble((notificationCompat$BubbleMetadata.f11901f & 1) != 0).setSuppressNotification((notificationCompat$BubbleMetadata.f11901f & 2) != 0);
            int i2 = notificationCompat$BubbleMetadata.d;
            if (i2 != 0) {
                builder.setDesiredHeight(i2);
            }
            int i3 = notificationCompat$BubbleMetadata.f11900e;
            if (i3 != 0) {
                builder.setDesiredHeightResId(i3);
            }
            return builder.build();
        }
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PendingIntent f11902a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final IconCompat f11903b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f11904c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f11905e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public PendingIntent f11906f;
        public final String g;

        public Builder(PendingIntent pendingIntent, IconCompat iconCompat) {
            if (pendingIntent == null) {
                r81.d("Bubble requires non-null pending intent");
                throw null;
            }
            if (iconCompat == null) {
                r81.d("Bubbles require non-null icon");
                throw null;
            }
            this.f11902a = pendingIntent;
            this.f11903b = iconCompat;
        }

        public final NotificationCompat$BubbleMetadata a() {
            PendingIntent pendingIntent = this.f11902a;
            String str = this.g;
            if (str == null && pendingIntent == null) {
                r81.d("Must supply pending intent or shortcut to bubble");
                return null;
            }
            IconCompat iconCompat = this.f11903b;
            if (str == null && iconCompat == null) {
                r81.d("Must supply an icon or shortcut for the bubble");
                return null;
            }
            PendingIntent pendingIntent2 = this.f11906f;
            int i2 = this.f11904c;
            int i3 = this.d;
            int i4 = this.f11905e;
            NotificationCompat$BubbleMetadata notificationCompat$BubbleMetadata = new NotificationCompat$BubbleMetadata();
            notificationCompat$BubbleMetadata.f11897a = pendingIntent;
            notificationCompat$BubbleMetadata.f11899c = iconCompat;
            notificationCompat$BubbleMetadata.d = i2;
            notificationCompat$BubbleMetadata.f11900e = i3;
            notificationCompat$BubbleMetadata.f11898b = pendingIntent2;
            notificationCompat$BubbleMetadata.g = str;
            notificationCompat$BubbleMetadata.f11901f = i4;
            return notificationCompat$BubbleMetadata;
        }

        public final void b(int i2, boolean z) {
            int i3 = this.f11905e;
            if (z) {
                this.f11905e = i2 | i3;
            } else {
                this.f11905e = (~i2) & i3;
            }
        }

        public Builder(String str) {
            if (!TextUtils.isEmpty(str)) {
                this.g = str;
            } else {
                r81.d("Bubble requires a non-null shortcut id");
                throw null;
            }
        }

        @Deprecated
        public Builder() {
        }
    }
}
