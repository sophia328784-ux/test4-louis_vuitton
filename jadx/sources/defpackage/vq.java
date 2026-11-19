package defpackage;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.firebase.crashlytics.internal.common.CrashlyticsCore;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class vq implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80637b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f80638c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f80639e;

    public /* synthetic */ vq(CallbackToFutureAdapter.Completer completer, ListenableFuture listenableFuture, long j2) {
        this.d = completer;
        this.f80639e = listenableFuture;
        this.f80638c = j2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f80637b;
        final long j2 = this.f80638c;
        Object obj = this.f80639e;
        Object obj2 = this.d;
        switch (i2) {
            case 0:
                final CrashlyticsCore crashlyticsCore = (CrashlyticsCore) obj2;
                final String str = (String) obj;
                return crashlyticsCore.o.f34591b.a(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        CrashlyticsController crashlyticsController = crashlyticsCore.g;
                        CrashlyticsUncaughtExceptionHandler crashlyticsUncaughtExceptionHandler = crashlyticsController.n;
                        if (crashlyticsUncaughtExceptionHandler == null || !crashlyticsUncaughtExceptionHandler.f34552e.get()) {
                            crashlyticsController.f34524i.c(j2, str);
                        }
                    }
                });
            default:
                return Boolean.valueOf(((CallbackToFutureAdapter.Completer) obj2).d(new TimeoutException("Future[" + ((ListenableFuture) obj) + "] is not done within " + j2 + " ms.")));
        }
    }

    public /* synthetic */ vq(CrashlyticsCore crashlyticsCore, long j2, String str) {
        this.d = crashlyticsCore;
        this.f80638c = j2;
        this.f80639e = str;
    }
}
