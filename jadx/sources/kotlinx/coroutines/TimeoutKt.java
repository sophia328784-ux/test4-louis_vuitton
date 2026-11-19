package kotlinx.coroutines;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.intrinsics.UndispatchedKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class TimeoutKt {
    public static final Object a(TimeoutCoroutine timeoutCoroutine, Function2 function2) {
        JobKt.f(timeoutCoroutine, true, new DisposeOnCompletion(DelayKt.d(timeoutCoroutine.uCont.getContext()).invokeOnTimeout(timeoutCoroutine.time, timeoutCoroutine, timeoutCoroutine.getContext())));
        return UndispatchedKt.a(timeoutCoroutine, false, timeoutCoroutine, function2);
    }

    public static final Object b(long j2, Function2 function2, ContinuationImpl continuationImpl) {
        if (j2 <= 0) {
            throw new TimeoutCancellationException("Timed out immediately");
        }
        Object objA = a(new TimeoutCoroutine(j2, continuationImpl), function2);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        return objA;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object c(long j2, Function2 function2, ContinuationImpl continuationImpl) {
        TimeoutKt$withTimeoutOrNull$1 timeoutKt$withTimeoutOrNull$1;
        Ref$ObjectRef ref$ObjectRef;
        if (continuationImpl instanceof TimeoutKt$withTimeoutOrNull$1) {
            timeoutKt$withTimeoutOrNull$1 = (TimeoutKt$withTimeoutOrNull$1) continuationImpl;
            int i2 = timeoutKt$withTimeoutOrNull$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                timeoutKt$withTimeoutOrNull$1.d = i2 - Integer.MIN_VALUE;
            } else {
                timeoutKt$withTimeoutOrNull$1 = new TimeoutKt$withTimeoutOrNull$1(continuationImpl);
            }
        } else {
            timeoutKt$withTimeoutOrNull$1 = new TimeoutKt$withTimeoutOrNull$1(continuationImpl);
        }
        Object obj = timeoutKt$withTimeoutOrNull$1.f74717c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = timeoutKt$withTimeoutOrNull$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            if (j2 > 0) {
                Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
                try {
                    timeoutKt$withTimeoutOrNull$1.f74716b = ref$ObjectRef2;
                    timeoutKt$withTimeoutOrNull$1.d = 1;
                    TimeoutCoroutine timeoutCoroutine = new TimeoutCoroutine(j2, timeoutKt$withTimeoutOrNull$1);
                    ref$ObjectRef2.f71921b = timeoutCoroutine;
                    Object objA = a(timeoutCoroutine, function2);
                    return objA == coroutineSingletons ? coroutineSingletons : objA;
                } catch (TimeoutCancellationException e2) {
                    e = e2;
                    ref$ObjectRef = ref$ObjectRef2;
                }
            }
            return null;
        }
        if (i3 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ref$ObjectRef = timeoutKt$withTimeoutOrNull$1.f74716b;
        try {
            ResultKt.b(obj);
            return obj;
        } catch (TimeoutCancellationException e3) {
            e = e3;
        }
        if (e.f74715b != ref$ObjectRef.f71921b) {
            throw e;
        }
        return null;
    }
}
