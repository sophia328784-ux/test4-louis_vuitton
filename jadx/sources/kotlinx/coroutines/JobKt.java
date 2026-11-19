package kotlinx.coroutines;

import defpackage.mt;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {}, d2 = {}, k = 4, mv = {2, 2, 0}, xi = 48)
public abstract class JobKt {
    public static JobImpl a() {
        return new JobImpl(null);
    }

    public static final void b(CoroutineContext coroutineContext, CancellationException cancellationException) {
        Job job = (Job) coroutineContext.get(Job.Key.f74677b);
        if (job != null) {
            job.cancel(cancellationException);
        }
    }

    public static final Object c(Job job, ContinuationImpl continuationImpl) {
        job.cancel(null);
        Object objJoin = job.join(continuationImpl);
        return objJoin == CoroutineSingletons.COROUTINE_SUSPENDED ? objJoin : Unit.f71739a;
    }

    public static final void d(CoroutineContext coroutineContext) {
        Job job = (Job) coroutineContext.get(Job.Key.f74677b);
        if (job != null && !job.isActive()) {
            throw job.getCancellationException();
        }
    }

    public static final Job e(CoroutineContext coroutineContext) {
        Job job = (Job) coroutineContext.get(Job.Key.f74677b);
        if (job != null) {
            return job;
        }
        mt.f(coroutineContext, "Current context doesn't contain Job in it: ");
        return null;
    }

    public static final DisposableHandle f(Job job, boolean z, JobNode jobNode) {
        return job instanceof JobSupport ? ((JobSupport) job).invokeOnCompletionInternal$kotlinx_coroutines_core(z, jobNode) : job.invokeOnCompletion(jobNode.q(), z, new JobKt__JobKt$invokeOnCompletion$1(1, jobNode, JobNode.class, "invoke", "invoke(Ljava/lang/Throwable;)V", 0));
    }

    public static final boolean g(CoroutineContext coroutineContext) {
        Job job = (Job) coroutineContext.get(Job.Key.f74677b);
        if (job != null) {
            return job.isActive();
        }
        return true;
    }
}
