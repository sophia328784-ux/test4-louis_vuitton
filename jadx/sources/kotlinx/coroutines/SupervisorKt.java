package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.intrinsics.UndispatchedKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class SupervisorKt {
    public static final CompletableJob a(Job job) {
        return new SupervisorJobImpl(job);
    }

    public static CompletableJob b() {
        return new SupervisorJobImpl(null);
    }

    public static final Object c(Function2 function2, ContinuationImpl continuationImpl) {
        SupervisorCoroutine supervisorCoroutine = new SupervisorCoroutine(continuationImpl.getContext(), continuationImpl);
        Object objA = UndispatchedKt.a(supervisorCoroutine, true, supervisorCoroutine, function2);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        return objA;
    }
}
