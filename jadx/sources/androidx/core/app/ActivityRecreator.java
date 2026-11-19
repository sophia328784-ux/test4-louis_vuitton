package androidx.core.app;

import android.app.Activity;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
abstract class ActivityRecreator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Class f11873a;

    static {
        Class<?> cls;
        new Handler(Looper.getMainLooper());
        try {
            cls = Class.forName("android.app.ActivityThread");
        } catch (Throwable unused) {
            cls = null;
        }
        f11873a = cls;
        try {
            Activity.class.getDeclaredField("mMainThread").setAccessible(true);
        } catch (Throwable unused2) {
        }
        try {
            Activity.class.getDeclaredField("mToken").setAccessible(true);
        } catch (Throwable unused3) {
        }
        Class cls2 = f11873a;
        Class cls3 = Boolean.TYPE;
        if (cls2 != null) {
            try {
                cls2.getDeclaredMethod("performStopActivity", IBinder.class, cls3, String.class).setAccessible(true);
            } catch (Throwable unused4) {
            }
        }
        Class cls4 = f11873a;
        if (cls4 == null) {
            return;
        }
        try {
            cls4.getDeclaredMethod("performStopActivity", IBinder.class, cls3).setAccessible(true);
        } catch (Throwable unused5) {
        }
    }
}
