package androidx.media3.common.util;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public class SystemClock implements Clock {
    @Override // androidx.media3.common.util.Clock
    public final long a() {
        return System.currentTimeMillis();
    }

    @Override // androidx.media3.common.util.Clock
    public final long b() {
        return android.os.SystemClock.elapsedRealtime();
    }

    @Override // androidx.media3.common.util.Clock
    public final long c() {
        return System.nanoTime();
    }

    @Override // androidx.media3.common.util.Clock
    public final long d() {
        return android.os.SystemClock.uptimeMillis();
    }

    @Override // androidx.media3.common.util.Clock
    public final HandlerWrapper e(Looper looper, Handler.Callback callback) {
        return new SystemHandlerWrapper(new Handler(looper, callback));
    }
}
