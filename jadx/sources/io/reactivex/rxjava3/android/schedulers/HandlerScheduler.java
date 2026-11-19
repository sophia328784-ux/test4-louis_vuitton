package io.reactivex.rxjava3.android.schedulers;

import android.os.Handler;
import android.os.Message;
import defpackage.r81;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
final class HandlerScheduler extends Scheduler {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f70019c;
    public final boolean d = true;

    public static final class HandlerWorker extends Scheduler.Worker {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Handler f70020b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f70021c;
        public volatile boolean d;

        public HandlerWorker(Handler handler, boolean z) {
            this.f70020b = handler;
            this.f70021c = z;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.d = true;
            this.f70020b.removeCallbacksAndMessages(this);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.d;
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        public final Disposable schedule(Runnable runnable, long j2, TimeUnit timeUnit) {
            if (runnable == null) {
                r81.d("run == null");
                return null;
            }
            if (timeUnit == null) {
                r81.d("unit == null");
                return null;
            }
            if (this.d) {
                return EmptyDisposable.INSTANCE;
            }
            ScheduledRunnable scheduledRunnable = new ScheduledRunnable(this.f70020b, runnable);
            Message messageObtain = Message.obtain(this.f70020b, scheduledRunnable);
            messageObtain.obj = this;
            if (this.f70021c) {
                messageObtain.setAsynchronous(true);
            }
            this.f70020b.sendMessageDelayed(messageObtain, timeUnit.toMillis(j2));
            if (!this.d) {
                return scheduledRunnable;
            }
            this.f70020b.removeCallbacks(scheduledRunnable);
            return EmptyDisposable.INSTANCE;
        }
    }

    public static final class ScheduledRunnable implements Runnable, Disposable {
        private final Runnable delegate;
        private volatile boolean disposed;
        private final Handler handler;

        public ScheduledRunnable(Handler handler, Runnable runnable) {
            this.handler = handler;
            this.delegate = runnable;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.handler.removeCallbacks(this);
            this.disposed = true;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.disposed;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.delegate.run();
            } catch (Throwable th) {
                RxJavaPlugins.b(th);
            }
        }
    }

    public HandlerScheduler(Handler handler) {
        this.f70019c = handler;
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public final Scheduler.Worker b() {
        return new HandlerWorker(this.f70019c, this.d);
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public final Disposable d(Runnable runnable, long j2, TimeUnit timeUnit) {
        if (runnable == null) {
            r81.d("run == null");
            return null;
        }
        if (timeUnit == null) {
            r81.d("unit == null");
            return null;
        }
        Handler handler = this.f70019c;
        ScheduledRunnable scheduledRunnable = new ScheduledRunnable(handler, runnable);
        Message messageObtain = Message.obtain(handler, scheduledRunnable);
        if (this.d) {
            messageObtain.setAsynchronous(true);
        }
        handler.sendMessageDelayed(messageObtain, timeUnit.toMillis(j2));
        return scheduledRunnable;
    }
}
