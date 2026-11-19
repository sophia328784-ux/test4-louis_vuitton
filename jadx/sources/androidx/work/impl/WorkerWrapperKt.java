package androidx.work.impl;

import androidx.work.DirectExecutor;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"work-runtime_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class WorkerWrapperKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f20381a = 0;

    static {
        Logger.b("WorkerWrapper");
    }

    public static final Object a(final ListenableFuture listenableFuture, final ListenableWorker listenableWorker, SuspendLambda suspendLambda) throws Throwable {
        V v;
        try {
            if (!listenableFuture.isDone()) {
                CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(suspendLambda), 1);
                cancellableContinuationImpl.initCancellability();
                listenableFuture.addListener(new ToContinuation(listenableFuture, cancellableContinuationImpl), DirectExecutor.INSTANCE);
                cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: androidx.work.impl.WorkerWrapperKt$awaitWithin$2$1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        Throwable th = (Throwable) obj;
                        if (th instanceof WorkerStoppedException) {
                            listenableWorker.f20258c.compareAndSet(-256, ((WorkerStoppedException) th).f20353b);
                        }
                        listenableFuture.cancel(false);
                        return Unit.f71739a;
                    }
                });
                Object result = cancellableContinuationImpl.getResult();
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                return result;
            }
            boolean z = false;
            while (true) {
                try {
                    v = listenableFuture.get();
                    break;
                } catch (InterruptedException unused) {
                    z = true;
                } catch (Throwable th) {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
            return v;
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            cause.getClass();
            throw cause;
        }
    }
}
