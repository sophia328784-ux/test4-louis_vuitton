package kotlinx.coroutines.intrinsics;

import kotlin.Metadata;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.CompletedExceptionally;
import kotlinx.coroutines.DispatchException;
import kotlinx.coroutines.JobSupportKt;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.internal.ScopeCoroutine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class UndispatchedKt {
    public static final Object a(ScopeCoroutine scopeCoroutine, boolean z, ScopeCoroutine scopeCoroutine2, Function2 function2) {
        Object completedExceptionally;
        Object objMakeCompletingOnce$kotlinx_coroutines_core;
        try {
            if (function2 instanceof BaseContinuationImpl) {
                TypeIntrinsics.e(2, function2);
                completedExceptionally = function2.invoke(scopeCoroutine2, scopeCoroutine);
            } else {
                completedExceptionally = IntrinsicsKt.c(scopeCoroutine, function2, scopeCoroutine2);
            }
        } catch (DispatchException e2) {
            Throwable th = e2.f74656b;
            scopeCoroutine.makeCompleting$kotlinx_coroutines_core(new CompletedExceptionally(th, false, 2, null));
            throw th;
        } catch (Throwable th2) {
            completedExceptionally = new CompletedExceptionally(th2, false, 2, null);
        }
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (completedExceptionally == coroutineSingletons || (objMakeCompletingOnce$kotlinx_coroutines_core = scopeCoroutine.makeCompletingOnce$kotlinx_coroutines_core(completedExceptionally)) == JobSupportKt.f74701b) {
            return coroutineSingletons;
        }
        scopeCoroutine.afterCompletionUndispatched();
        if (!(objMakeCompletingOnce$kotlinx_coroutines_core instanceof CompletedExceptionally)) {
            return JobSupportKt.a(objMakeCompletingOnce$kotlinx_coroutines_core);
        }
        if (!z) {
            Throwable th3 = ((CompletedExceptionally) objMakeCompletingOnce$kotlinx_coroutines_core).f74648a;
            if ((th3 instanceof TimeoutCancellationException) && ((TimeoutCancellationException) th3).f74715b == scopeCoroutine) {
                if (completedExceptionally instanceof CompletedExceptionally) {
                    throw ((CompletedExceptionally) completedExceptionally).f74648a;
                }
                return completedExceptionally;
            }
        }
        throw ((CompletedExceptionally) objMakeCompletingOnce$kotlinx_coroutines_core).f74648a;
    }
}
