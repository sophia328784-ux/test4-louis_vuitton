package androidx.camera.core.impl;

import android.util.Log;
import android.util.Size;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.kt;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public abstract class DeferrableSurface {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Size f2286k = new Size(0, 0);
    public static final boolean l = Logger.c(3, "DeferrableSurface");
    public static final AtomicInteger m = new AtomicInteger(0);
    public static final AtomicInteger n = new AtomicInteger(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f2287a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2288b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2289c;
    public CallbackToFutureAdapter.Completer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ListenableFuture f2290e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CallbackToFutureAdapter.Completer f2291f;
    public final ListenableFuture g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Size f2292h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f2293i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Class f2294j;

    public static final class SurfaceClosedException extends Exception {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final DeferrableSurface f2295b;

        public SurfaceClosedException(String str, DeferrableSurface deferrableSurface) {
            super(str);
            this.f2295b = deferrableSurface;
        }
    }

    public static final class SurfaceUnavailableException extends Exception {
        public SurfaceUnavailableException(String str) {
            super(str);
        }
    }

    public DeferrableSurface(Size size, int i2) {
        this.f2287a = new Object();
        final int i3 = 0;
        this.f2288b = 0;
        this.f2289c = false;
        this.f2292h = size;
        this.f2293i = i2;
        ListenableFuture listenableFutureA = CallbackToFutureAdapter.a(new CallbackToFutureAdapter.Resolver(this) { // from class: jt

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ DeferrableSurface f71464c;

            {
                this.f71464c = this;
            }

            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object i(CallbackToFutureAdapter.Completer completer) {
                int i4 = i3;
                DeferrableSurface deferrableSurface = this.f71464c;
                switch (i4) {
                    case 0:
                        synchronized (deferrableSurface.f2287a) {
                            deferrableSurface.d = completer;
                            break;
                        }
                        return "DeferrableSurface-termination(" + deferrableSurface + ")";
                    default:
                        synchronized (deferrableSurface.f2287a) {
                            deferrableSurface.f2291f = completer;
                            break;
                        }
                        return "DeferrableSurface-close(" + deferrableSurface + ")";
                }
            }
        });
        this.f2290e = listenableFutureA;
        final int i4 = 1;
        this.g = CallbackToFutureAdapter.a(new CallbackToFutureAdapter.Resolver(this) { // from class: jt

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ DeferrableSurface f71464c;

            {
                this.f71464c = this;
            }

            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object i(CallbackToFutureAdapter.Completer completer) {
                int i5 = i4;
                DeferrableSurface deferrableSurface = this.f71464c;
                switch (i5) {
                    case 0:
                        synchronized (deferrableSurface.f2287a) {
                            deferrableSurface.d = completer;
                            break;
                        }
                        return "DeferrableSurface-termination(" + deferrableSurface + ")";
                    default:
                        synchronized (deferrableSurface.f2287a) {
                            deferrableSurface.f2291f = completer;
                            break;
                        }
                        return "DeferrableSurface-close(" + deferrableSurface + ")";
                }
            }
        });
        if (Logger.c(3, "DeferrableSurface")) {
            n.incrementAndGet();
            m.get();
            e();
            listenableFutureA.addListener(new kt(Log.getStackTraceString(new Exception()), this), CameraXExecutors.a());
        }
    }

    public void a() {
        CallbackToFutureAdapter.Completer completer;
        synchronized (this.f2287a) {
            try {
                if (this.f2289c) {
                    completer = null;
                } else {
                    this.f2289c = true;
                    this.f2291f.b(null);
                    if (this.f2288b == 0) {
                        completer = this.d;
                        this.d = null;
                    } else {
                        completer = null;
                    }
                    if (Logger.c(3, "DeferrableSurface")) {
                        toString();
                        Logger.c(3, "DeferrableSurface");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (completer != null) {
            completer.b(null);
        }
    }

    public final void b() {
        CallbackToFutureAdapter.Completer completer;
        synchronized (this.f2287a) {
            try {
                int i2 = this.f2288b;
                if (i2 == 0) {
                    throw new IllegalStateException("Decrementing use count occurs more times than incrementing");
                }
                int i3 = i2 - 1;
                this.f2288b = i3;
                if (i3 == 0 && this.f2289c) {
                    completer = this.d;
                    this.d = null;
                } else {
                    completer = null;
                }
                if (Logger.c(3, "DeferrableSurface")) {
                    toString();
                    Logger.c(3, "DeferrableSurface");
                    if (this.f2288b == 0) {
                        n.get();
                        m.decrementAndGet();
                        e();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (completer != null) {
            completer.b(null);
        }
    }

    public final ListenableFuture c() {
        synchronized (this.f2287a) {
            try {
                if (this.f2289c) {
                    return Futures.e(new SurfaceClosedException("DeferrableSurface already closed.", this));
                }
                return f();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d() {
        synchronized (this.f2287a) {
            try {
                int i2 = this.f2288b;
                if (i2 == 0 && this.f2289c) {
                    throw new SurfaceClosedException("Cannot begin use on a closed surface.", this);
                }
                this.f2288b = i2 + 1;
                if (Logger.c(3, "DeferrableSurface")) {
                    if (this.f2288b == 1) {
                        n.get();
                        m.incrementAndGet();
                        e();
                    }
                    toString();
                    Logger.c(3, "DeferrableSurface");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void e() {
        if (!l && Logger.c(3, "DeferrableSurface")) {
            Logger.c(3, "DeferrableSurface");
        }
        toString();
        Logger.c(3, "DeferrableSurface");
    }

    public abstract ListenableFuture f();

    public DeferrableSurface() {
        this(f2286k, 0);
    }
}
