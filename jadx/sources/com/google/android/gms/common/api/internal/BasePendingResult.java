package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.d21;
import defpackage.r81;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BasePendingResult<R extends Result> extends PendingResult<R> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final ThreadLocal f29019j = new zaq();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Result f29023e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Status f29024f;
    public volatile boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f29025h;
    private zar resultGuardian;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f29020a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CountDownLatch f29021b = new CountDownLatch(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f29022c = new ArrayList();
    public final AtomicReference d = new AtomicReference();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f29026i = false;

    public BasePendingResult(GoogleApiClient googleApiClient) {
        new CallbackHandler(googleApiClient != null ? googleApiClient.a() : Looper.getMainLooper());
        new WeakReference(googleApiClient);
    }

    public static void h(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException unused) {
                "Unable to release ".concat(String.valueOf(result));
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void a(PendingResult.StatusListener statusListener) {
        synchronized (this.f29020a) {
            try {
                if (e()) {
                    statusListener.a(this.f29024f);
                } else {
                    this.f29022c.add(statusListener);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final Result b() {
        Result result;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        Preconditions.j("Result has already been consumed.", !this.g);
        try {
            if (!this.f29021b.await(0L, timeUnit)) {
                d(Status.f29006i);
            }
        } catch (InterruptedException unused) {
            d(Status.g);
        }
        Preconditions.j("Result is not ready.", e());
        synchronized (this.f29020a) {
            Preconditions.j("Result has already been consumed.", !this.g);
            Preconditions.j("Result is not ready.", e());
            result = this.f29023e;
            this.f29023e = null;
            this.g = true;
        }
        if (this.d.getAndSet(null) == null) {
            Preconditions.h(result);
            return result;
        }
        r81.h();
        return null;
    }

    public abstract Result c(Status status);

    public final void d(Status status) {
        synchronized (this.f29020a) {
            try {
                if (!e()) {
                    f(c(status));
                    this.f29025h = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean e() {
        return this.f29021b.getCount() == 0;
    }

    public final void f(Result result) {
        synchronized (this.f29020a) {
            try {
                if (this.f29025h) {
                    h(result);
                    return;
                }
                e();
                Preconditions.j("Results have already been set", !e());
                Preconditions.j("Result has already been consumed", !this.g);
                g(result);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void g(Result result) {
        this.f29023e = result;
        this.f29024f = result.getStatus();
        this.f29021b.countDown();
        if (this.f29023e instanceof Releasable) {
            this.resultGuardian = new zar(this);
        }
        ArrayList arrayList = this.f29022c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((PendingResult.StatusListener) arrayList.get(i2)).a(this.f29024f);
        }
        arrayList.clear();
    }

    public static class CallbackHandler<R extends Result> extends com.google.android.gms.internal.base.zao {
        public CallbackHandler() {
            this(Looper.getMainLooper());
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 != 1) {
                if (i2 != 2) {
                    Log.wtf("BasePendingResult", d21.f(i2, "Don't know how to handle message: ", new StringBuilder(String.valueOf(i2).length() + 34)), new Exception());
                    return;
                } else {
                    ((BasePendingResult) message.obj).d(Status.f29006i);
                    return;
                }
            }
            Pair pair = (Pair) message.obj;
            ResultCallback resultCallback = (ResultCallback) pair.first;
            Result result = (Result) pair.second;
            try {
                resultCallback.a();
            } catch (RuntimeException e2) {
                BasePendingResult.h(result);
                throw e2;
            }
        }

        public final void zaa(ResultCallback resultCallback, Result result) {
            ThreadLocal threadLocal = BasePendingResult.f29019j;
            Preconditions.h(resultCallback);
            sendMessage(obtainMessage(1, new Pair(resultCallback, result)));
        }

        public CallbackHandler(Looper looper) {
            super(looper);
        }
    }

    public BasePendingResult(Looper looper) {
        new CallbackHandler(looper);
        new WeakReference(null);
    }
}
