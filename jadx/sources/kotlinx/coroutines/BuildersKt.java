package kotlinx.coroutines;

import defpackage.md;
import defpackage.rq;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.internal.ThreadContextKt;
import kotlinx.coroutines.intrinsics.CancellableKt;
import kotlinx.coroutines.intrinsics.UndispatchedKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {}, d2 = {}, k = 4, mv = {2, 2, 0}, xi = 48)
public abstract class BuildersKt {
    public static Deferred a(CoroutineScope coroutineScope, CoroutineContext coroutineContext, Function2 function2, int i2) {
        if ((i2 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.f71840b;
        }
        CoroutineStart coroutineStart = CoroutineStart.DEFAULT;
        CoroutineContext coroutineContextB = CoroutineContextKt.b(coroutineScope, coroutineContext);
        coroutineStart.getClass();
        DeferredCoroutine lazyDeferredCoroutine = coroutineStart == CoroutineStart.LAZY ? new LazyDeferredCoroutine(coroutineContextB, function2) : new DeferredCoroutine(coroutineContextB, true);
        lazyDeferredCoroutine.start(coroutineStart, lazyDeferredCoroutine, function2);
        return lazyDeferredCoroutine;
    }

    public static final Job b(CoroutineScope coroutineScope, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2) {
        CoroutineContext coroutineContextB = CoroutineContextKt.b(coroutineScope, coroutineContext);
        coroutineStart.getClass();
        AbstractCoroutine lazyStandaloneCoroutine = coroutineStart == CoroutineStart.LAZY ? new LazyStandaloneCoroutine(coroutineContextB, function2) : new StandaloneCoroutine(coroutineContextB, true);
        lazyStandaloneCoroutine.start(coroutineStart, lazyStandaloneCoroutine, function2);
        return lazyStandaloneCoroutine;
    }

    public static /* synthetic */ Job c(CoroutineScope coroutineScope, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i2) {
        if ((i2 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.f71840b;
        }
        if ((i2 & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return b(coroutineScope, coroutineContext, coroutineStart, function2);
    }

    public static Object d(Function2 function2) {
        return e(EmptyCoroutineContext.f71840b, function2);
    }

    public static final Object e(CoroutineContext coroutineContext, Function2 function2) throws Throwable {
        EventLoop eventLoopA;
        CoroutineContext coroutineContextB;
        long jProcessNextEvent;
        ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) coroutineContext.get(ContinuationInterceptor.INSTANCE);
        GlobalScope globalScope = GlobalScope.f74669b;
        if (continuationInterceptor == null) {
            eventLoopA = ThreadLocalEventLoop.a();
            coroutineContextB = CoroutineContextKt.b(globalScope, coroutineContext.plus(eventLoopA));
        } else {
            eventLoopA = (EventLoop) ThreadLocalEventLoop.f74711a.get();
            coroutineContextB = CoroutineContextKt.b(globalScope, coroutineContext);
        }
        BlockingCoroutine blockingCoroutine = new BlockingCoroutine(coroutineContextB, Thread.currentThread(), eventLoopA);
        blockingCoroutine.start(CoroutineStart.DEFAULT, blockingCoroutine, function2);
        EventLoop eventLoop = blockingCoroutine.f74635c;
        if (eventLoop != null) {
            EventLoop.incrementUseCount$default(eventLoop, false, 1, null);
        }
        while (true) {
            if (eventLoop != null) {
                try {
                    jProcessNextEvent = eventLoop.processNextEvent();
                } catch (Throwable th) {
                    if (eventLoop != null) {
                        EventLoop.decrementUseCount$default(eventLoop, false, 1, null);
                    }
                    throw th;
                }
            } else {
                jProcessNextEvent = Long.MAX_VALUE;
            }
            if (blockingCoroutine.isCompleted()) {
                break;
            }
            LockSupport.parkNanos(blockingCoroutine, jProcessNextEvent);
            if (Thread.interrupted()) {
                blockingCoroutine.cancelCoroutine(new InterruptedException());
            }
        }
        if (eventLoop != null) {
            EventLoop.decrementUseCount$default(eventLoop, false, 1, null);
        }
        Object objA = JobSupportKt.a(blockingCoroutine.getState$kotlinx_coroutines_core());
        CompletedExceptionally completedExceptionally = objA instanceof CompletedExceptionally ? (CompletedExceptionally) objA : null;
        if (completedExceptionally == null) {
            return objA;
        }
        throw completedExceptionally.f74648a;
    }

    public static final Object f(CoroutineContext coroutineContext, Function2 function2, Continuation continuation) throws Throwable {
        Object objA;
        CoroutineContext context = continuation.getContext();
        CoroutineContext coroutineContextPlus = !((Boolean) coroutineContext.fold(Boolean.FALSE, new rq(1))).booleanValue() ? context.plus(coroutineContext) : CoroutineContextKt.a(context, coroutineContext, false);
        JobKt.d(coroutineContextPlus);
        if (coroutineContextPlus == context) {
            ScopeCoroutine scopeCoroutine = new ScopeCoroutine(coroutineContextPlus, continuation);
            objA = UndispatchedKt.a(scopeCoroutine, true, scopeCoroutine, function2);
        } else {
            ContinuationInterceptor.Companion key = ContinuationInterceptor.INSTANCE;
            if (Intrinsics.c(coroutineContextPlus.get(key), context.get(key))) {
                UndispatchedCoroutine undispatchedCoroutine = new UndispatchedCoroutine(coroutineContextPlus, continuation);
                CoroutineContext context2 = undispatchedCoroutine.getContext();
                Object objC = ThreadContextKt.c(context2, null);
                try {
                    Object objA2 = UndispatchedKt.a(undispatchedCoroutine, true, undispatchedCoroutine, function2);
                    ThreadContextKt.a(context2, objC);
                    objA = objA2;
                } catch (Throwable th) {
                    ThreadContextKt.a(context2, objC);
                    throw th;
                }
            } else {
                DispatchedCoroutine dispatchedCoroutine = new DispatchedCoroutine(coroutineContextPlus, continuation);
                CancellableKt.a(function2, dispatchedCoroutine, dispatchedCoroutine);
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = DispatchedCoroutine.f74657b;
                do {
                    int i2 = atomicIntegerFieldUpdater.get(dispatchedCoroutine);
                    if (i2 != 0) {
                        if (i2 != 2) {
                            md.k("Already suspended");
                            return null;
                        }
                        objA = JobSupportKt.a(dispatchedCoroutine.getState$kotlinx_coroutines_core());
                        if (objA instanceof CompletedExceptionally) {
                            throw ((CompletedExceptionally) objA).f74648a;
                        }
                    }
                } while (!atomicIntegerFieldUpdater.compareAndSet(dispatchedCoroutine, 0, 1));
                objA = CoroutineSingletons.COROUTINE_SUSPENDED;
            }
        }
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        return objA;
    }
}
