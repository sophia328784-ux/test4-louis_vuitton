package kotlinx.coroutines;

import defpackage.md;
import defpackage.os;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class DelayKt {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final CoroutineSingletons a(ContinuationImpl continuationImpl) {
        DelayKt$awaitCancellation$1 delayKt$awaitCancellation$1;
        if (continuationImpl instanceof DelayKt$awaitCancellation$1) {
            delayKt$awaitCancellation$1 = (DelayKt$awaitCancellation$1) continuationImpl;
            int i2 = delayKt$awaitCancellation$1.f74655c;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                delayKt$awaitCancellation$1.f74655c = i2 - Integer.MIN_VALUE;
            } else {
                delayKt$awaitCancellation$1 = new DelayKt$awaitCancellation$1(continuationImpl);
            }
        } else {
            delayKt$awaitCancellation$1 = new DelayKt$awaitCancellation$1(continuationImpl);
        }
        Object obj = delayKt$awaitCancellation$1.f74654b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = delayKt$awaitCancellation$1.f74655c;
        if (i3 == 0) {
            ResultKt.b(obj);
            delayKt$awaitCancellation$1.f74655c = 1;
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(delayKt$awaitCancellation$1), 1);
            cancellableContinuationImpl.initCancellability();
            if (cancellableContinuationImpl.getResult() == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        os.d();
        return null;
    }

    public static final Object b(long j2, Continuation continuation) {
        if (j2 <= 0) {
            return Unit.f71739a;
        }
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        if (j2 < Long.MAX_VALUE) {
            d(cancellableContinuationImpl.getContext()).scheduleResumeAfterDelay(j2, cancellableContinuationImpl);
        }
        Object result = cancellableContinuationImpl.getResult();
        return result == CoroutineSingletons.COROUTINE_SUSPENDED ? result : Unit.f71739a;
    }

    public static final Object c(long j2, Continuation continuation) {
        Object objB = b(e(j2), continuation);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : Unit.f71739a;
    }

    public static final Delay d(CoroutineContext coroutineContext) {
        CoroutineContext.Element element = coroutineContext.get(ContinuationInterceptor.INSTANCE);
        Delay delay = element instanceof Delay ? (Delay) element : null;
        return delay == null ? DefaultExecutorKt.f74653a : delay;
    }

    public static final long e(long j2) {
        Duration.Companion companion = Duration.INSTANCE;
        boolean z = j2 > 0;
        if (z) {
            return Duration.e(Duration.j(j2, DurationKt.h(999999L, DurationUnit.NANOSECONDS)));
        }
        if (!z) {
            return 0L;
        }
        v40.g();
        return 0L;
    }
}
