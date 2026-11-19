package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.DispatchedContinuationKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class YieldKt {
    public static final Object a(ContinuationImpl continuationImpl) {
        Object obj;
        CoroutineContext context = continuationImpl.getContext();
        JobKt.d(context);
        Continuation continuationB = IntrinsicsKt.b(continuationImpl);
        DispatchedContinuation dispatchedContinuation = continuationB instanceof DispatchedContinuation ? (DispatchedContinuation) continuationB : null;
        if (dispatchedContinuation == null) {
            obj = Unit.f71739a;
        } else {
            if (DispatchedContinuationKt.c(dispatchedContinuation.dispatcher, context)) {
                dispatchedContinuation.dispatchYield$kotlinx_coroutines_core(context, Unit.f71739a);
            } else {
                YieldContext yieldContext = new YieldContext();
                CoroutineContext coroutineContextPlus = context.plus(yieldContext);
                Unit unit = Unit.f71739a;
                dispatchedContinuation.dispatchYield$kotlinx_coroutines_core(coroutineContextPlus, unit);
                if (yieldContext.f74722b) {
                    EventLoop eventLoopA = ThreadLocalEventLoop.a();
                    if (eventLoopA.isUnconfinedQueueEmpty()) {
                        obj = Unit.f71739a;
                    } else if (eventLoopA.isUnconfinedLoopActive()) {
                        dispatchedContinuation._state = unit;
                        dispatchedContinuation.resumeMode = 1;
                        eventLoopA.dispatchUnconfined(dispatchedContinuation);
                        obj = CoroutineSingletons.COROUTINE_SUSPENDED;
                    } else {
                        eventLoopA.incrementUseCount(true);
                        try {
                            dispatchedContinuation.run();
                            do {
                            } while (eventLoopA.processUnconfinedEvent());
                        } catch (Throwable th) {
                            try {
                                dispatchedContinuation.handleFatalException$kotlinx_coroutines_core(th);
                            } catch (Throwable th2) {
                                eventLoopA.decrementUseCount(true);
                                throw th2;
                            }
                        }
                        eventLoopA.decrementUseCount(true);
                        obj = Unit.f71739a;
                    }
                }
            }
            obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        }
        return obj == CoroutineSingletons.COROUTINE_SUSPENDED ? obj : Unit.f71739a;
    }
}
