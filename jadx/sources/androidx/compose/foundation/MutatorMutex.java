package androidx.compose.foundation;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/compose/foundation/MutatorMutex;", "", "<init>", "()V", "Mutator", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MutatorMutex {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f4263a = new AtomicReference(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutexImpl f4264b = MutexKt.a();

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/MutatorMutex$Mutator;", "", "Landroidx/compose/foundation/MutatePriority;", "priority", "Lkotlinx/coroutines/Job;", "job", "<init>", "(Landroidx/compose/foundation/MutatePriority;Lkotlinx/coroutines/Job;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Mutator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MutatePriority f4265a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Job f4266b;

        public Mutator(MutatePriority mutatePriority, Job job) {
            this.f4265a = mutatePriority;
            this.f4266b = job;
        }
    }

    public static final void a(MutatorMutex mutatorMutex, Mutator mutator) {
        AtomicReference atomicReference = mutatorMutex.f4263a;
        while (true) {
            Mutator mutator2 = (Mutator) atomicReference.get();
            if (mutator2 != null && mutator.f4265a.compareTo(mutator2.f4265a) < 0) {
                throw new CancellationException("Current mutation had a higher priority");
            }
            do {
                if (atomicReference.compareAndSet(mutator2, mutator)) {
                    if (mutator2 != null) {
                        mutator2.f4266b.cancel(new MutationInterruptedException());
                        return;
                    }
                    return;
                }
            } while (atomicReference.get() == mutator2);
        }
    }

    public final Object b(MutatePriority mutatePriority, Function1 function1, ContinuationImpl continuationImpl) {
        return CoroutineScopeKt.d(new MutatorMutex$mutate$2(mutatePriority, this, function1, null), continuationImpl);
    }

    public final Object c(Object obj, MutatePriority mutatePriority, Function2 function2, SuspendLambda suspendLambda) {
        return CoroutineScopeKt.d(new MutatorMutex$mutateWith$2(mutatePriority, this, function2, obj, null), suspendLambda);
    }
}
