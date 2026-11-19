package kotlinx.coroutines.android;

import android.os.Handler;
import android.os.Looper;
import defpackage.d21;
import defpackage.gv;
import defpackage.h10;
import defpackage.jr;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Delay;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.MainCoroutineDispatcher;
import kotlinx.coroutines.NonDisposableHandle;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/android/HandlerContext;", "Lkotlinx/coroutines/android/HandlerDispatcher;", "Lkotlinx/coroutines/Delay;", "Landroid/os/Handler;", "handler", "", "name", "<init>", "(Landroid/os/Handler;Ljava/lang/String;)V", "kotlinx-coroutines-android"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class HandlerContext extends HandlerDispatcher implements Delay {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f74723f = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f74724b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f74725c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HandlerContext f74726e;

    public HandlerContext(Handler handler, String str, boolean z) {
        super(null);
        this.f74724b = handler;
        this.f74725c = str;
        this.d = z;
        this.f74726e = z ? this : new HandlerContext(handler, str, true);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        if (this.f74724b.post(runnable)) {
            return;
        }
        u(coroutineContext, runnable);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof HandlerContext)) {
            return false;
        }
        HandlerContext handlerContext = (HandlerContext) obj;
        return handlerContext.f74724b == this.f74724b && handlerContext.d == this.d;
    }

    public final int hashCode() {
        return (this.d ? 1231 : 1237) ^ System.identityHashCode(this.f74724b);
    }

    @Override // kotlinx.coroutines.Delay
    public final DisposableHandle invokeOnTimeout(long j2, Runnable runnable, CoroutineContext coroutineContext) {
        if (j2 > 4611686018427387903L) {
            j2 = 4611686018427387903L;
        }
        if (this.f74724b.postDelayed(runnable, j2)) {
            return new h10(this, runnable, 0);
        }
        u(coroutineContext, runnable);
        return NonDisposableHandle.f74708b;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final boolean isDispatchNeeded(CoroutineContext coroutineContext) {
        return (this.d && Intrinsics.c(Looper.myLooper(), this.f74724b.getLooper())) ? false : true;
    }

    @Override // kotlinx.coroutines.MainCoroutineDispatcher
    public final MainCoroutineDispatcher r() {
        return this.f74726e;
    }

    @Override // kotlinx.coroutines.Delay
    public final void scheduleResumeAfterDelay(long j2, CancellableContinuation cancellableContinuation) {
        jr jrVar = new jr((CancellableContinuationImpl) cancellableContinuation, this, 19);
        if (j2 > 4611686018427387903L) {
            j2 = 4611686018427387903L;
        }
        if (this.f74724b.postDelayed(jrVar, j2)) {
            cancellableContinuation.invokeOnCancellation(new gv(this, jrVar, 21));
        } else {
            u(cancellableContinuation.getContext(), jrVar);
        }
    }

    @Override // kotlinx.coroutines.MainCoroutineDispatcher, kotlinx.coroutines.CoroutineDispatcher
    /* JADX INFO: renamed from: toString */
    public final String getD() {
        MainCoroutineDispatcher mainCoroutineDispatcherR;
        String string;
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        MainCoroutineDispatcher mainCoroutineDispatcher = MainDispatcherLoader.f75131a;
        if (this == mainCoroutineDispatcher) {
            string = "Dispatchers.Main";
        } else {
            try {
                mainCoroutineDispatcherR = mainCoroutineDispatcher.r();
            } catch (UnsupportedOperationException unused) {
                mainCoroutineDispatcherR = null;
            }
            string = this == mainCoroutineDispatcherR ? "Dispatchers.Main.immediate" : null;
        }
        if (string == null) {
            string = this.f74725c;
            if (string == null) {
                string = this.f74724b.toString();
            }
            if (this.d) {
                return d21.j(string, ".immediate");
            }
        }
        return string;
    }

    public final void u(CoroutineContext coroutineContext, Runnable runnable) {
        JobKt.b(coroutineContext, new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed"));
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        DefaultIoScheduler.f75161b.dispatch(coroutineContext, runnable);
    }

    public /* synthetic */ HandlerContext(Handler handler, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(handler, (i2 & 2) != 0 ? null : str);
    }

    public HandlerContext(Handler handler, String str) {
        this(handler, str, false);
    }
}
