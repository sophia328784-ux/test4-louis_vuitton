package androidx.compose.animation.core;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/compose/animation/core/MutatorMutex;", "", "<init>", "()V", "Mutator", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MutatorMutex {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f3908a = new AtomicReference(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutexImpl f3909b = MutexKt.a();

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/animation/core/MutatorMutex$Mutator;", "", "Landroidx/compose/animation/core/MutatePriority;", "priority", "Lkotlinx/coroutines/Job;", "job", "<init>", "(Landroidx/compose/animation/core/MutatePriority;Lkotlinx/coroutines/Job;)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Mutator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MutatePriority f3910a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Job f3911b;

        public Mutator(MutatePriority mutatePriority, Job job) {
            this.f3910a = mutatePriority;
            this.f3911b = job;
        }
    }

    public static Object a(MutatorMutex mutatorMutex, Function1 function1, Continuation continuation) {
        MutatePriority mutatePriority = MutatePriority.Default;
        mutatorMutex.getClass();
        return CoroutineScopeKt.d(new MutatorMutex$mutate$2(mutatePriority, mutatorMutex, function1, null), continuation);
    }
}
