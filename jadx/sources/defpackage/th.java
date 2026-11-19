package defpackage;

import android.app.Notification;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class th {
    public static /* synthetic */ int a() {
        int i2 = Build.VERSION.SDK_INT;
        return i2 < 36 ? i2 * 100000 : Build.VERSION.SDK_INT_FULL;
    }

    public static /* synthetic */ Notification.ProgressStyle b() {
        return new Notification.ProgressStyle();
    }
}
