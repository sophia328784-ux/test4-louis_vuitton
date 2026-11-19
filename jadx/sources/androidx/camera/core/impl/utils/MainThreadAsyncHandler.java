package androidx.camera.core.impl.utils;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public abstract class MainThreadAsyncHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile Handler f2424a;

    public static Handler a() {
        if (f2424a != null) {
            return f2424a;
        }
        synchronized (MainThreadAsyncHandler.class) {
            try {
                if (f2424a == null) {
                    f2424a = Handler.createAsync(Looper.getMainLooper());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f2424a;
    }
}
