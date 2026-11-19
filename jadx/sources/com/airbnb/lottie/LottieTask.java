package com.airbnb.lottie;

import android.os.Handler;
import android.os.Looper;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.LottieThreadFactory;
import defpackage.et;
import defpackage.l8;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes.dex */
public class LottieTask<T> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Executor f21783e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashSet f21784a = new LinkedHashSet(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedHashSet f21785b = new LinkedHashSet(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f21786c = new Handler(Looper.getMainLooper());
    public volatile LottieResult d = null;

    public static class LottieFutureTask<T> extends FutureTask<LottieResult<T>> {
        private LottieTask<T> lottieTask;

        public LottieFutureTask(LottieTask<T> lottieTask, Callable<LottieResult<T>> callable) {
            super(callable);
            this.lottieTask = lottieTask;
        }

        @Override // java.util.concurrent.FutureTask
        public void done() {
            try {
                if (isCancelled()) {
                    this.lottieTask = null;
                    return;
                }
                try {
                    LottieTask<T> lottieTask = this.lottieTask;
                    LottieResult<T> lottieResult = get();
                    Executor executor = LottieTask.f21783e;
                    lottieTask.d(lottieResult);
                } catch (InterruptedException | ExecutionException e2) {
                    LottieTask<T> lottieTask2 = this.lottieTask;
                    LottieResult lottieResult2 = new LottieResult(e2);
                    Executor executor2 = LottieTask.f21783e;
                    lottieTask2.d(lottieResult2);
                }
                this.lottieTask = null;
            } catch (Throwable th) {
                this.lottieTask = null;
                throw th;
            }
        }
    }

    static {
        if ("true".equals(System.getProperty("lottie.testing.directExecutor"))) {
            f21783e = new l8(1);
        } else {
            f21783e = Executors.newCachedThreadPool(new LottieThreadFactory());
        }
    }

    public LottieTask(Callable<LottieResult<T>> callable) {
        f21783e.execute(new LottieFutureTask(this, callable));
    }

    public final synchronized void a(LottieListener lottieListener) {
        Throwable th;
        try {
            LottieResult lottieResult = this.d;
            if (lottieResult != null && (th = lottieResult.f21782b) != null) {
                lottieListener.onResult(th);
            }
            this.f21785b.add(lottieListener);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized void b(LottieListener lottieListener) {
        Object obj;
        try {
            LottieResult lottieResult = this.d;
            if (lottieResult != null && (obj = lottieResult.f21781a) != null) {
                lottieListener.onResult(obj);
            }
            this.f21784a.add(lottieListener);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void c() {
        LottieResult lottieResult = this.d;
        if (lottieResult == null) {
            return;
        }
        Object obj = lottieResult.f21781a;
        if (obj != null) {
            synchronized (this) {
                Iterator it = new ArrayList(this.f21784a).iterator();
                while (it.hasNext()) {
                    ((LottieListener) it.next()).onResult(obj);
                }
            }
            return;
        }
        Throwable th = lottieResult.f21782b;
        synchronized (this) {
            ArrayList arrayList = new ArrayList(this.f21785b);
            if (arrayList.isEmpty()) {
                Logger.b("Lottie encountered an error but no failure listener was added:", th);
                return;
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ((LottieListener) it2.next()).onResult(th);
            }
        }
    }

    public final void d(LottieResult lottieResult) {
        if (this.d != null) {
            md.k("A task may only be set once.");
            return;
        }
        this.d = lottieResult;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            c();
        } else {
            this.f21786c.post(new et(this, 22));
        }
    }

    public LottieTask(T t) {
        d(new LottieResult(t));
    }
}
