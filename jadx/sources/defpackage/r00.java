package defpackage;

import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r00 implements CallbackToFutureAdapter.Resolver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79211b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ListenableFuture f79212c;
    public final /* synthetic */ ScheduledExecutorService d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f79213e;

    public /* synthetic */ r00(ListenableFuture listenableFuture, ScheduledExecutorService scheduledExecutorService, long j2, int i2) {
        this.f79211b = i2;
        this.f79212c = listenableFuture;
        this.d = scheduledExecutorService;
        this.f79213e = j2;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public final Object i(CallbackToFutureAdapter.Completer completer) {
        int i2 = this.f79211b;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        long j2 = this.f79213e;
        ScheduledExecutorService scheduledExecutorService = this.d;
        ListenableFuture listenableFuture = this.f79212c;
        switch (i2) {
            case 0:
                Futures.i(completer, listenableFuture);
                if (!listenableFuture.isDone()) {
                    final ScheduledFuture scheduledFutureSchedule = scheduledExecutorService.schedule(new vq(completer, listenableFuture, j2), j2, timeUnit);
                    final int i3 = 0;
                    listenableFuture.addListener(new Runnable() { // from class: s00
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i4 = i3;
                            ScheduledFuture scheduledFuture = scheduledFutureSchedule;
                            switch (i4) {
                                case 0:
                                    scheduledFuture.cancel(true);
                                    break;
                                default:
                                    scheduledFuture.cancel(true);
                                    break;
                            }
                        }
                    }, CameraXExecutors.a());
                }
                return "TimeoutFuture[" + listenableFuture + "]";
            default:
                Futures.i(completer, listenableFuture);
                if (!listenableFuture.isDone()) {
                    final ScheduledFuture<?> scheduledFutureSchedule2 = scheduledExecutorService.schedule(new jr(completer, listenableFuture, 18), j2, timeUnit);
                    final int i4 = 1;
                    listenableFuture.addListener(new Runnable() { // from class: s00
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i5 = i4;
                            ScheduledFuture scheduledFuture = scheduledFutureSchedule2;
                            switch (i5) {
                                case 0:
                                    scheduledFuture.cancel(true);
                                    break;
                                default:
                                    scheduledFuture.cancel(true);
                                    break;
                            }
                        }
                    }, CameraXExecutors.a());
                }
                return "TimeoutFuture[" + listenableFuture + "]";
        }
    }
}
