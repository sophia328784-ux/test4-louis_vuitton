package com.perfectcorp.thirdparty.io.reactivex.android.schedulers;

import android.os.Handler;
import android.os.Message;
import com.perfectcorp.thirdparty.io.reactivex.Scheduler;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c;
import defpackage.r81;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
final class b extends Scheduler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f42589a;

    public static final class a extends Scheduler.b {
        public final Handler g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public volatile boolean f42590h;

        public a(Handler handler) {
            this.g = handler;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.Scheduler.b
        public final Disposable a(Runnable runnable, long j2, TimeUnit timeUnit) {
            if (timeUnit == null) {
                r81.d("unit == null");
                return null;
            }
            if (this.f42590h) {
                return c.f42601a;
            }
            RunnableC0212b runnableC0212b = new RunnableC0212b(this.g, runnable);
            Message messageObtain = Message.obtain(this.g, runnableC0212b);
            messageObtain.obj = this;
            this.g.sendMessageDelayed(messageObtain, timeUnit.toMillis(j2));
            if (!this.f42590h) {
                return runnableC0212b;
            }
            this.g.removeCallbacks(runnableC0212b);
            return c.f42601a;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            this.f42590h = true;
            this.g.removeCallbacksAndMessages(this);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.f42590h;
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.thirdparty.io.reactivex.android.schedulers.b$b, reason: collision with other inner class name */
    public static final class RunnableC0212b implements Disposable, Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Handler f42591a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Runnable f42592b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private volatile boolean f42593c;

        public RunnableC0212b(Handler handler, Runnable runnable) {
            this.f42591a = handler;
            this.f42592b = runnable;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            this.f42591a.removeCallbacks(this);
            this.f42593c = true;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.f42593c;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                this.f42592b.run();
            } catch (Throwable th) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            }
        }
    }

    public b(Handler handler) {
        this.f42589a = handler;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Scheduler
    public final Scheduler.b a() {
        return new a(this.f42589a);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Scheduler
    public final Disposable c(Runnable runnable, long j2, TimeUnit timeUnit) {
        if (timeUnit == null) {
            r81.d("unit == null");
            return null;
        }
        Handler handler = this.f42589a;
        RunnableC0212b runnableC0212b = new RunnableC0212b(handler, runnable);
        handler.sendMessageDelayed(Message.obtain(handler, runnableC0212b), timeUnit.toMillis(j2));
        return runnableC0212b;
    }
}
