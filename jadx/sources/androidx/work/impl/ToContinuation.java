package androidx.work.impl;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;
import kotlin.Metadata;
import kotlin.Result;
import kotlinx.coroutines.CancellableContinuation;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B#\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\r\u001a\u00020\u000eH\u0016R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Landroidx/work/impl/ToContinuation;", "T", "Ljava/lang/Runnable;", "futureToObserve", "Lcom/google/common/util/concurrent/ListenableFuture;", "continuation", "Lkotlinx/coroutines/CancellableContinuation;", "<init>", "(Lcom/google/common/util/concurrent/ListenableFuture;Lkotlinx/coroutines/CancellableContinuation;)V", "getFutureToObserve", "()Lcom/google/common/util/concurrent/ListenableFuture;", "getContinuation", "()Lkotlinx/coroutines/CancellableContinuation;", "run", "", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class ToContinuation<T> implements Runnable {
    private final CancellableContinuation<T> continuation;
    private final ListenableFuture<T> futureToObserve;

    /* JADX WARN: Multi-variable type inference failed */
    public ToContinuation(ListenableFuture<T> listenableFuture, CancellableContinuation<? super T> cancellableContinuation) {
        listenableFuture.getClass();
        cancellableContinuation.getClass();
        this.futureToObserve = listenableFuture;
        this.continuation = cancellableContinuation;
    }

    public final CancellableContinuation<T> getContinuation() {
        return this.continuation;
    }

    public final ListenableFuture<T> getFutureToObserve() {
        return this.futureToObserve;
    }

    @Override // java.lang.Runnable
    public void run() {
        T t;
        boolean zIsCancelled = this.futureToObserve.isCancelled();
        CancellableContinuation<T> cancellableContinuation = this.continuation;
        if (zIsCancelled) {
            cancellableContinuation.cancel(null);
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            ListenableFuture<T> listenableFuture = this.futureToObserve;
            int i2 = WorkerWrapperKt.f20381a;
            boolean z = false;
            while (true) {
                try {
                    t = listenableFuture.get();
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
            cancellableContinuation.resumeWith(t);
        } catch (ExecutionException e2) {
            CancellableContinuation<T> cancellableContinuation2 = this.continuation;
            Result.Companion companion2 = Result.INSTANCE;
            int i3 = WorkerWrapperKt.f20381a;
            Throwable cause = e2.getCause();
            cause.getClass();
            cancellableContinuation2.resumeWith(new Result.Failure(cause));
        }
    }
}
