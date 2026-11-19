package kotlinx.coroutines.intrinsics;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AbstractCoroutine;
import kotlinx.coroutines.DispatchException;
import kotlinx.coroutines.internal.DispatchedContinuationKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class CancellableKt {
    public static final void a(Function2 function2, Object obj, AbstractCoroutine abstractCoroutine) {
        try {
            Continuation continuationB = IntrinsicsKt.b(IntrinsicsKt.a(abstractCoroutine, function2, obj));
            Result.Companion companion = Result.INSTANCE;
            DispatchedContinuationKt.a(Unit.f71739a, continuationB);
        } catch (Throwable th) {
            th = th;
            if (th instanceof DispatchException) {
                th = ((DispatchException) th).f74656b;
            }
            Result.Companion companion2 = Result.INSTANCE;
            abstractCoroutine.resumeWith(ResultKt.a(th));
            throw th;
        }
    }
}
