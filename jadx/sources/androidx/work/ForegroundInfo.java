package androidx.work;

import android.app.Notification;

/* JADX INFO: loaded from: classes.dex */
public final class ForegroundInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f20249a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f20250b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Notification f20251c;

    public ForegroundInfo(int i2, Notification notification, int i3) {
        this.f20249a = i2;
        this.f20251c = notification;
        this.f20250b = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ForegroundInfo.class != obj.getClass()) {
            return false;
        }
        ForegroundInfo foregroundInfo = (ForegroundInfo) obj;
        if (this.f20249a == foregroundInfo.f20249a && this.f20250b == foregroundInfo.f20250b) {
            return this.f20251c.equals(foregroundInfo.f20251c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f20251c.hashCode() + (((this.f20249a * 31) + this.f20250b) * 31);
    }

    public final String toString() {
        return "ForegroundInfo{mNotificationId=" + this.f20249a + ", mForegroundServiceType=" + this.f20250b + ", mNotification=" + this.f20251c + '}';
    }

    public ForegroundInfo(int i2, Notification notification) {
        this(i2, notification, 0);
    }
}
