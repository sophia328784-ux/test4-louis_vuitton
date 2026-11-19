package androidx.media3.common.util;

import android.content.Context;
import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public final class WifiLockManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HandlerWrapper f14257a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HandlerWrapper f14258b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f14259c;

    public static final class WifiLockManagerInternal {
        public WifiLockManagerInternal(Context context) {
        }
    }

    public WifiLockManager(Context context, Looper looper, Clock clock) {
        new WifiLockManagerInternal(context.getApplicationContext());
        this.f14257a = clock.e(looper, null);
        this.f14258b = clock.e(Looper.getMainLooper(), null);
    }

    public final void a(boolean z) {
        if (this.f14259c == z) {
            return;
        }
        this.f14259c = z;
    }
}
