package androidx.media3.common.util;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public interface Clock {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SystemClock f14143a = new SystemClock();

    long a();

    long b();

    long c();

    long d();

    HandlerWrapper e(Looper looper, Handler.Callback callback);
}
