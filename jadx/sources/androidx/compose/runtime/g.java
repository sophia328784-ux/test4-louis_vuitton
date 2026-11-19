package androidx.compose.runtime;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g implements Function1 {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Function0 function0 = ((NextFrameEndCallbackQueue.NextFrameEndAwaiter) obj).f8045a;
        if (function0 != null) {
            function0.mo47invoke();
        }
        return Unit.f71739a;
    }
}
