package kotlinx.coroutines.internal;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CompletionStateKt;
import kotlinx.coroutines.CoroutineContextKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.DispatchException;
import kotlinx.coroutines.EventLoop;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.ThreadLocalEventLoop;
import kotlinx.coroutines.UndispatchedCoroutine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class DispatchedContinuationKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Symbol f75109a = new Symbol("UNDEFINED");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Symbol f75110b = new Symbol("REUSABLE_CLAIMED");

    public static final void a(Object obj, Continuation continuation) {
        if (!(continuation instanceof DispatchedContinuation)) {
            continuation.resumeWith(obj);
            return;
        }
        DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
        Object objB = CompletionStateKt.b(obj);
        if (c(dispatchedContinuation.dispatcher, dispatchedContinuation.getContext())) {
            dispatchedContinuation._state = objB;
            dispatchedContinuation.resumeMode = 1;
            b(dispatchedContinuation.dispatcher, dispatchedContinuation.getContext(), dispatchedContinuation);
            return;
        }
        EventLoop eventLoopA = ThreadLocalEventLoop.a();
        if (eventLoopA.isUnconfinedLoopActive()) {
            dispatchedContinuation._state = objB;
            dispatchedContinuation.resumeMode = 1;
            eventLoopA.dispatchUnconfined(dispatchedContinuation);
            return;
        }
        eventLoopA.incrementUseCount(true);
        try {
            Job job = (Job) dispatchedContinuation.getContext().get(Job.Key.f74677b);
            if (job == null || job.isActive()) {
                Continuation<T> continuation2 = dispatchedContinuation.continuation;
                Object obj2 = dispatchedContinuation.countOrElement;
                CoroutineContext context = continuation2.getContext();
                Object objC = ThreadContextKt.c(context, obj2);
                UndispatchedCoroutine undispatchedCoroutineC = objC != ThreadContextKt.f75141a ? CoroutineContextKt.c(continuation2, context, objC) : null;
                try {
                    dispatchedContinuation.continuation.resumeWith(obj);
                    if (undispatchedCoroutineC == null || undispatchedCoroutineC.N()) {
                        ThreadContextKt.a(context, objC);
                    }
                } catch (Throwable th) {
                    if (undispatchedCoroutineC == null || undispatchedCoroutineC.N()) {
                        ThreadContextKt.a(context, objC);
                    }
                    throw th;
                }
            } else {
                CancellationException cancellationException = job.getCancellationException();
                dispatchedContinuation.cancelCompletedResult$kotlinx_coroutines_core(objB, cancellationException);
                Result.Companion companion = Result.INSTANCE;
                dispatchedContinuation.resumeWith(ResultKt.a(cancellationException));
            }
            while (eventLoopA.processUnconfinedEvent()) {
            }
        } catch (Throwable th2) {
            try {
                dispatchedContinuation.handleFatalException$kotlinx_coroutines_core(th2);
            } finally {
                eventLoopA.decrementUseCount(true);
            }
        }
    }

    public static final void b(CoroutineDispatcher coroutineDispatcher, CoroutineContext coroutineContext, Runnable runnable) {
        try {
            coroutineDispatcher.dispatch(coroutineContext, runnable);
        } catch (Throwable th) {
            throw new DispatchException(th, coroutineDispatcher, coroutineContext);
        }
    }

    public static final boolean c(CoroutineDispatcher coroutineDispatcher, CoroutineContext coroutineContext) throws DispatchException {
        try {
            return coroutineDispatcher.isDispatchNeeded(coroutineContext);
        } catch (Throwable th) {
            throw new DispatchException(th, coroutineDispatcher, coroutineContext);
        }
    }
}
