package kotlinx.coroutines;

import defpackage.mt;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.intrinsics.UndispatchedKt;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class CoroutineScopeKt {
    public static final ContextScope a(CoroutineContext coroutineContext) {
        if (coroutineContext.get(Job.Key.f74677b) == null) {
            coroutineContext = coroutineContext.plus(JobKt.a());
        }
        return new ContextScope(coroutineContext);
    }

    public static final ContextScope b() {
        CompletableJob completableJobB = SupervisorKt.b();
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        return new ContextScope(completableJobB.plus(MainDispatcherLoader.f75131a));
    }

    public static final void c(CoroutineScope coroutineScope, CancellationException cancellationException) {
        Job job = (Job) coroutineScope.getF13444c().get(Job.Key.f74677b);
        if (job != null) {
            job.cancel(cancellationException);
        } else {
            mt.f(coroutineScope, "Scope cannot be cancelled because it does not have a job: ");
        }
    }

    public static final Object d(Function2 function2, Continuation continuation) {
        ScopeCoroutine scopeCoroutine = new ScopeCoroutine(continuation.getContext(), continuation);
        Object objA = UndispatchedKt.a(scopeCoroutine, true, scopeCoroutine, function2);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        return objA;
    }

    public static final boolean e(CoroutineScope coroutineScope) {
        Job job = (Job) coroutineScope.getF13444c().get(Job.Key.f74677b);
        if (job != null) {
            return job.isActive();
        }
        return true;
    }
}
