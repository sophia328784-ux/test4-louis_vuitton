package androidx.compose.runtime;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/runtime/PausableMonotonicFrameClock;", "Landroidx/compose/runtime/MonotonicFrameClock;", "frameClock", "<init>", "(Landroidx/compose/runtime/MonotonicFrameClock;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PausableMonotonicFrameClock implements MonotonicFrameClock {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MonotonicFrameClock f8052b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Latch f8053c = new Latch();

    public PausableMonotonicFrameClock(MonotonicFrameClock monotonicFrameClock) {
        this.f8052b = monotonicFrameClock;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.runtime.MonotonicFrameClock
    public final Object c(Continuation continuation, Function1 function1) {
        PausableMonotonicFrameClock$withFrameNanos$1 pausableMonotonicFrameClock$withFrameNanos$1;
        boolean z;
        Object result;
        if (continuation instanceof PausableMonotonicFrameClock$withFrameNanos$1) {
            pausableMonotonicFrameClock$withFrameNanos$1 = (PausableMonotonicFrameClock$withFrameNanos$1) continuation;
            int i2 = pausableMonotonicFrameClock$withFrameNanos$1.f8056e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                pausableMonotonicFrameClock$withFrameNanos$1.f8056e = i2 - Integer.MIN_VALUE;
            } else {
                pausableMonotonicFrameClock$withFrameNanos$1 = new PausableMonotonicFrameClock$withFrameNanos$1(this, continuation);
            }
        } else {
            pausableMonotonicFrameClock$withFrameNanos$1 = new PausableMonotonicFrameClock$withFrameNanos$1(this, continuation);
        }
        Object obj = pausableMonotonicFrameClock$withFrameNanos$1.f8055c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = pausableMonotonicFrameClock$withFrameNanos$1.f8056e;
        if (i3 == 0) {
            ResultKt.b(obj);
            final Latch latch = this.f8053c;
            pausableMonotonicFrameClock$withFrameNanos$1.f8054b = function1;
            pausableMonotonicFrameClock$withFrameNanos$1.f8056e = 1;
            synchronized (latch.f8011a) {
                z = latch.d;
            }
            if (z) {
                result = Unit.f71739a;
            } else {
                final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(pausableMonotonicFrameClock$withFrameNanos$1), 1);
                cancellableContinuationImpl.initCancellability();
                synchronized (latch.f8011a) {
                    latch.f8012b.add(cancellableContinuationImpl);
                }
                cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: androidx.compose.runtime.Latch$await$2$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Latch latch2 = latch;
                        Object obj3 = latch2.f8011a;
                        CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
                        synchronized (obj3) {
                            latch2.f8012b.remove(cancellableContinuationImpl2);
                        }
                        return Unit.f71739a;
                    }
                });
                result = cancellableContinuationImpl.getResult();
                if (result != coroutineSingletons) {
                    result = Unit.f71739a;
                }
            }
            if (result != coroutineSingletons) {
            }
        }
        if (i3 != 1) {
            if (i3 == 2) {
                ResultKt.b(obj);
                return obj;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        function1 = pausableMonotonicFrameClock$withFrameNanos$1.f8054b;
        ResultKt.b(obj);
        MonotonicFrameClock monotonicFrameClock = this.f8052b;
        pausableMonotonicFrameClock$withFrameNanos$1.f8054b = null;
        pausableMonotonicFrameClock$withFrameNanos$1.f8056e = 2;
        Object objC = monotonicFrameClock.c(pausableMonotonicFrameClock$withFrameNanos$1, function1);
        return objC == coroutineSingletons ? coroutineSingletons : objC;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final Object fold(Object obj, Function2 function2) {
        return CoroutineContext.Element.DefaultImpls.a(this, obj, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element get(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.b(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.c(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        return CoroutineContext.Element.DefaultImpls.d(coroutineContext, this);
    }
}
