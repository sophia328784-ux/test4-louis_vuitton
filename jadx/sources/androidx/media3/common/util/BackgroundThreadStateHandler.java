package androidx.media3.common.util;

import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public final class BackgroundThreadStateHandler<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HandlerWrapper f14135a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HandlerWrapper f14136b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StateChangeListener f14137c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f14138e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f14139f;

    public interface StateChangeListener<T> {
        void c(Object obj, Object obj2);
    }

    public BackgroundThreadStateHandler(T t, Looper looper, Looper looper2, Clock clock, StateChangeListener<T> stateChangeListener) {
        this.f14135a = clock.e(looper, null);
        this.f14136b = clock.e(looper2, null);
        this.d = t;
        this.f14138e = t;
        this.f14137c = stateChangeListener;
    }

    public final void a(Runnable runnable) {
        HandlerWrapper handlerWrapper = this.f14135a;
        if (handlerWrapper.h().getThread().isAlive()) {
            handlerWrapper.k(runnable);
        }
    }

    public final void b(Object obj) {
        Object obj2 = this.d;
        this.d = obj;
        if (obj2.equals(obj)) {
            return;
        }
        this.f14137c.c(obj2, obj);
    }
}
